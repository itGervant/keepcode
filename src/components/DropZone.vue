<template>
    <div class="drop-zone" ref="dropZone">
        <input type="file" ref="fileInput" style="display: none;" @change="handleInputChange">
        <a @click="handleFileInputClick"><img src="../assets/plus.svg"></a>
        <p>Загрузить файл</p>
        <p> <a @click="handleFileInputClick">Выберите файл</a> или перетащите его сюда</p>
    </div>
</template>
  
<script>
export default {
    name: 'DropZone',
    mounted() {
        const dropZone = this.$refs.dropZone;

        dropZone.addEventListener("dragover", (event) => {
            event.preventDefault();
            event.dataTransfer.dropEffect = "copy";
            dropZone.classList.add("hover");
        });

        dropZone.addEventListener("dragleave", () => {
            dropZone.classList.remove("hover");
        });

        dropZone.addEventListener("drop", this.handleDrop);
    },
    beforeUnmount() {
        const dropZone = this.$refs.dropZone;

        dropZone.removeEventListener("dragover", () => { });
        dropZone.removeEventListener("dragleave", () => { });
        dropZone.removeEventListener("drop", this.handleDrop);
    },
    methods: {
        handleDrop(event) {
            event.preventDefault();
            const files = event.dataTransfer.files;
            this.handleFiles(files);
            this.$refs.dropZone.classList.remove("hover");
        },
        handleInputChange(event) {
            const files = event.target.files;
            this.handleFiles(files);
        },
        handleFileInputClick() {
            this.$refs.fileInput.click();
        },

        handleFiles(files) {
            const formData = new FormData();
            for (let i = 0; i < files.length; i++) {
                formData.append("files[]", files[i]);
            }

            fetch("http://localhost:5252/api/v1/tasks", {
                method: "POST",
                body: formData
            })
                .then(response => {
                    console.log("Файлы успешно загружены на сервер");
                })
                .catch(error => {
                    console.error("Ошибка при загрузке файлов на сервер:", error);
                });
        }

    }
};
</script>
  
<style scoped>
.drop-zone {
    box-sizing: border-box;
    margin-left: 30px;
    width: 590px;
    height: 157px;
    background: #F2F5F8;
    border: 1px solid #B9C2C9;
    border-radius: 10px;
    cursor: pointer;
}

.drop-zone p {
    margin-bottom: 10px;
}

.drop-zone.hover {
    background-color: #f5f5f5;
}

.drop-zone:hover {
    background-color: #f5f5f5;
}

img {
    margin-top: 26px;
    margin-bottom: 20px;
}

p {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
}

a {
    text-decoration: underline;
}
</style>
  

  