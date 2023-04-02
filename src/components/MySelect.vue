<template>
    <div class="myselect">
        <div class="myselect-title" @click="optionsVisible = !optionsVisible">
            <p>{{ selected }}</p>
            <img src="../assets/chevron.svg">
        </div>

        <div class="options" v-if="optionsVisible">
            <p v-for="option in options" :key="option.value" @click="selectOption(option)" :value="modelValue"
                @change="changeOption">
                {{ option.name }}

            </p>
        </div>
    </div>
</template>
  
<script>


export default {
    name: 'MySelect',
    props: {
        modelValue: {
            type: String,
        },
        options: {
            type: Array,
            default: () => []
        },
        selected: {
            type: String,
            default: '',
        }
    },
    data() {
        return {
            optionsVisible: false,

        }
    },
    methods: {
        selectOption(option) {
            this.$emit('update:modelValue', option.value)
            this.$emit('select', option)
            this.optionsVisible = !this.optionsVisible
        }
    }
}
</script>
  
<style scoped>
* {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    /* identical to box height */


    /* Голубой */

    color: #458AFB;
}

.options {
    margin: 0;
    display: flex;
    flex-direction: column;
    width: 100%;
    z-index: 5;
    background: white;
    border-radius: 5px;
    border: 1px solid lightgray;



}

.myselect {
    display: flex;
    flex-direction: column;
    width: 120px;
}

.myselect-title {
    cursor: pointer;
}

.myselect-title img {
    margin-left: 20px;
}

.options p:hover {
    background: #e7e7e7;
}

.options p {
    text-align: start;

}
</style>
