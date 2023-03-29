<template>
    <div>
        <span class="title">Действует с </span>
        <span v-if="!startDate">Не выбрано</span>
        <span v-else>{{ startDate }}</span>
        <div class="icon" @click="showStartDatePicker = !showStartDatePicker">
            <input type="date" v-model="startDate" @input="onStartDateInput" v-show="showStartDatePicker">
            <img src="../assets/datepicker.svg">
        </div>
        <span class="title"> по </span>
        <span v-if="!endDate">Не выбрано</span>
        <span v-else>{{ endDate }}</span>
        <div class="icon" @click="showEndDatePicker = !showEndDatePicker">
            <img src="../assets/datepicker.svg">
            <input type="date" v-model="endDate" @input="onEndDateInput" v-show="showEndDatePicker">
        </div>
    </div>
</template>
  
<script>
import { ref } from 'vue';

export default {
    name: 'DateRangePicker',
    setup() {
        const startDate = ref(null);
        const endDate = ref(null);
        const showStartDatePicker = ref(true);
        const showEndDatePicker = ref(false);

        const onStartDateInput = (event) => {
            if (!event.target.value) {
                startDate.value = null;
            } else {
                startDate.value = new Date(event.target.value).toLocaleDateString();
            }
        };

        const onEndDateInput = (event) => {
            if (!event.target.value) {
                endDate.value = null;
            } else {
                endDate.value = new Date(event.target.value).toLocaleDateString();
            }
        };

        return {
            startDate,
            endDate,
            onStartDateInput,
            onEndDateInput,
            showStartDatePicker,
            showEndDatePicker,
        };
    },
};
</script>
  
<style scoped>
.icon {
    display: inline-block;
    position: relative;
    width: 24px;
    height: 24px;
    cursor: pointer;
    margin-right: 40px;
    margin-left: 10px;
}

.icon input[type="date"] {
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    width: 100%;
    height: 100%;
    cursor: pointer;
}

div>span {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;

}

.title {
    color: #0D2839;
    margin-right: 17px;
}
</style>
  
  