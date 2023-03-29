<template>
    <div class="document-container" v-for="post in posts" :key="post.id">
        <div class="document-info">
            <div class="document-title">{{ post.title }}</div>
            <div class="document-subtitle">
                <div
                    :class="[post.description === 'Заключен' ? 'document-icon-true' : post.description === 'Расторгнут' ? 'document-icon-false' : 'document-icon-empty']">
                </div>{{ post.description }}
            </div>
            <div class="document-date">{{ post.date }}</div>
            <div class="document-buttons">
                <a class="btn-print"><img src="../assets/printer.svg"></a>
                <a class="btn-write"><img src="../assets/edit.svg"></a>
                <a class="btn-delete"><img src="../assets/delete.svg"></a>
            </div>
        </div>
        <div class="document-doc">
            <img v-if="post.doctype === 'pdf'" src="../assets/pdficon.svg" />
            <img v-else-if="post.doctype === 'doc'" src="../assets/docicon.svg" />
            <img v-else-if="post.doctype === 'jpg'" src="../assets/jpgicon.svg" />
            <img v-else-if="post.doctype" src="../assets/xlsicon.svg" />
        </div>
    </div>
</template>

<script>
export default {
    name: 'MyDocument',
    props: {
        posts: {
            type: Array,
            required: true
        },

    },


}



</script>

<style scoped>
.document-container {
    position: relative;
    background: white;
    height: 157px;
    width: 378px;
    border: 1px solid black;
    border-radius: 10px;
    display: flex;

    justify-content: space-between;

}

.document-container:not(:last-child) {
    margin-right: 30px;
}

.document-icon-true {
    width: 9px;
    height: 9px;
    background: #9ECB45;
    border-radius: 2px;
    margin: 0 5px;
}

.document-icon-false {
    width: 9px;
    height: 9px;
    background: #FE6845;
    border-radius: 2px;
    margin: 0 5px;
}

.document-title {
    position: relative;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 700;
    font-size: 24px;
    line-height: 29px;
    margin-left: 20px;
    margin-top: 20px;
}

.document-subtitle {
    display: flex;
    justify-content: start;
    align-items: baseline;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    margin-left: 20px;
}

.document-date {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    /* identical to box height */


    /* Темно серый */

    color: #86939C;
    margin-left: 20px;
    position: absolute;
    bottom: 60px;
}



.document-info {}

.document-buttons {
    position: absolute;
    bottom: 20px;
    left: 0;
    right: 0;
    display: flex;
    width: 144px;
    margin-left: 20px;
    justify-content: space-between;
}

.document-doc {
    width: 117px;
    height: 117px;
    background: #F2F5F8;
    border-radius: 10px;
    margin-right: 20px;
    margin-top: 20px;
}

.document-doc img {
    margin-top: 30px;
}
</style>