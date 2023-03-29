<template>
    <div class="header">
        <div class="content">
            <div class="title">
                <span>Главная&nbsp/</span>&nbsp<span> Ученики&nbsp/</span>&nbsp<span class="title-active"> Документы</span>
            </div>
            <div class="login">
                <img class="user-avatar" src="../assets/userAvatar.svg" alt="login">
                <p class="user-name">Name-user</p>
                <a src="google.com" class="btn-gear">
                    <img src="../assets/gear.svg" alt="gear">
                </a>
                <a src="google.com" class="btn-logout">
                    <img src="../assets/logout.svg" alt="gear">
                </a>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'HeaderPage',
}
</script>

<style scoped>
* {
    box-sizing: border-box;
}

.header {

    position: relative;
    left: 138px;
    top: -956px;
    width: 1782px;
    height: 72px;
    background: white;

}

.content {
    display: flex;
    justify-content: space-between;
    align-items: stretch;
    height: 72px;
}

span {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 300;
    font-size: 14px;
    line-height: 17px;
    color: #0D2839;
    text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
}

.title {
    margin-left: 90px;
    height: 72px;
    display: flex;
    align-items: center;
}

.title-active {
    color: #86939C;
}

.login {

    height: 72px;
    display: flex;
    align-items: center;

}

.btn-logout {
    margin-right: 90px;
}

.btn-gear {
    margin-right: 33px;
}

.user-name {
    margin-right: 53px;
}

.user-avatar {
    margin-right: 10px;
}
</style>