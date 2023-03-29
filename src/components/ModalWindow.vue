<template>
    <div class="modal-overlay" v-if="show === true" @click="hideWindow">
        <div @click.stop class="window">
            <div class="window-header">
                <h2 class="window-header-title">Добавить документ</h2>
                <a @click="hideWindow" class="window-header-btn">
                    <img src="../assets/close.svg">
                </a>
            </div>
            <div class="window-radio">
                <div class="window-radio-title">Тип документа:&#42;</div>
                <div class="radio-buttons">
                    <label><input type="radio" name="option" id="dogovor" value="Договор"><span>Договор</span></label>
                    <label><input type="radio" name="option" id="spravka" value="Справка"><span>Справка</span></label>
                    <label><input type="radio" name="option" id="drugoe" value="Другое"><span>Другое</span></label>
                </div>

            </div>
            <div class="window-document">
                <input class="window-document-text" type="text" placeholder="Название документа">
                <input class="window-document-text" type="text" placeholder="Номер">
            </div>
            <div class="window-date">
                <DateRangePicker />
            </div>
            <div class="window-checkbox">

                <label><input type="checkbox" placeholder="Оповещать об окончании"><span>Оповещать об
                        окончании</span></label>

                <label><input type="checkbox" placeholder="Создавать задачу по окончании"><span>Создавать задачу по
                        окончании</span></label>
            </div>
            <div class="window-dropzone">
                <DropZone />
            </div>
            <div class="window-buttons">
                <button class="add-btn">Добавить документ</button>
                <button class="delete-btn">Отменить</button>
            </div>
        </div>
    </div>
</template>

<script>
import DateRangePicker from "./DatePicker.vue"
import DropZone from "./DropZone.vue"

export default {
    name: 'ModalWindow',
    components: { DateRangePicker, DropZone },
    props: {
        show: {
            type: Boolean,
            default: false,
        }
    },
    methods: {
        hideWindow() {
            this.$emit('update:show', false)
        }
    }
}


</script>

<style scoped>
* {
    padding: 0;
    margin: 0;
}

.modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    /* полупрозрачный серый фон */
    z-index: 9999;
    /* установка z-index поверх всех элементов на странице */
    display: flex;
    justify-content: center;
    align-items: center;
}

.window {
    background-color: #fff;
    /* цвет фона модального окна */
    height: 907px;
    width: 650px;
    border-radius: 10px;
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.2);
    /* тень для модального окна */
    position: relative;
    margin-left: 30px;
    margin-right: 30px;
}

.window-header {
    display: flex;
    justify-content: space-between;
    align-items: baseline;
}

.window-header-title {
    position: relative;
    margin-left: 31px;
    margin-top: 30px;
    height: 43px;
    width: 295px;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 700;
    font-size: 36px;
    line-height: 43px;

    color: #458AFB;

}

.window-header-btn {
    margin-right: 30px;
}

.window-radio {
    width: 228px;
    display: flex;
    margin-left: 30px;
    margin-top: 50px;
}

.window-radio-title {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    color: #0D2839;
}

.radio-buttons {
    display: flex;
    flex-direction: column;

    margin-left: 17px;
}

label {
    display: inline-block;
    margin-left: 0;
    text-align: left;

}

input+span {
    margin-left: 10px;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    color: #0D2839;
}

.window-document {
    margin-top: 54px;
}

.window-document-text {
    border: none;
    border-bottom: 1px solid #B9C2C9;
    width: 589px;
    margin-bottom: 50px;
    height: 40px;
}

input::placeholder {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    padding-bottom: 0px;
}

input {
    outline: none;

}

.window-checkbox {
    display: flex;
    flex-direction: column;
    margin-left: 30px;
    margin-top: 54px;
}

.window-date {
    margin-left: 30px;
    display: flex;
    justify-content: start;
}

input[type="checkbox"] {
    margin-bottom: 20px;
}

.window-dropzone {
    margin-top: 30px;
}

.window-buttons {
    margin-top: 50px;
}

.add-btn {
    height: 50px;
    width: 220px;
    border-radius: 10px;
    background: #FFBD27;
    border: none;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 800;
    font-size: 16px;
    line-height: 19px;
    text-align: center;
    text-transform: uppercase;

    /* Белый */

    color: #FFFFFF;



}

.delete-btn {
    height: 50px;
    width: 220px;
    border-radius: 10px;
    background: #D5DADF;
    border: none;
    margin-left: 30px;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 800;
    font-size: 16px;
    line-height: 19px;
    text-align: center;
    text-transform: uppercase;

    /* Белый */

    color: #FFFFFF;

}</style>