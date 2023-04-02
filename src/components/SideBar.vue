<template>
    <div class="item-logo">
        <img class="logo" src="../assets/logotip.svg" alt="logo">
    </div>

    <div class="item">
        <a scr="#">
            <img class="item-img" src="../assets/home.svg" alt="logo">
            <p class="title">Главная</p>
        </a>
    </div>
    <div class="item">
        <a scr="#">
            <img class="item-img" src="../assets/tasks.svg" alt="logo">
            <p class="title">Расписание</p>
        </a>
    </div>
    <div class="item-active">
        <a scr="#">
            <img class="item-img" src="../assets/students.svg" alt="logo">
            <p class="title">Ученики</p>
        </a>
    </div>
    <div class="item">
        <a scr="#">
            <img class="item-img" src="../assets/teacher.svg" alt="logo">
            <p class="title">Преподаватели</p>
        </a>
    </div>
    <div class="item">
        <a scr="#">
            <img class="item-img" src="../assets/lessons.svg" alt="logo">
            <p class="title">Занятия</p>
        </a>
    </div>
    <div class="item">
        <a scr="#">
            <img class="item-img" src="../assets/group.svg" alt="logo">
            <p class="title">Группы</p>
        </a>
    </div>
    <div class="item-footer">

    </div>
</template>
<script>
export default {
    name: 'SideBar'
}

</script>

<style scoped>
.item-logo {
    height: 72px;
    max-width: 138px;
    background: #5688F3;
    position: relative;
    align-items: center;
}

.item {
    height: 97px;
    max-width: 138px;
    background: #5688F3;
    position: relative;
    align-items: center;
}

.item-img {
    margin-top: 20px;
}

a {
    cursor: pointer;
}

.title {
    margin-top: 5px;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    text-align: center;

    /* Белый */

    color: #FFFFFF;
}

.logo {
    margin-top: 16px;
}

.item-footer {
    height: 302px;
    max-width: 138px;
    background: #5688F3;
    position: relative;
    align-items: center;
}

.item-active {
    background: #5696FF;
    height: 97px;
    max-width: 138px;
    position: relative;
    align-items: center;

}
</style>