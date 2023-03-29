<template>
    <div class="user">
        <div class="user-icon">
            <div class="user-back">
                <img class="user-avatar" src="../assets/avatar.svg" alt="Аватар">
            </div>

        </div>
        <div class="user-info">
            <div class="user-info-main">
                <div class="user-name">Абрамова Екатерина</div>
                <img class="avatar" src="../assets/usericon.svg" alt="Иконка">
            </div>
            <div class="user-info-contacts">
                <div class="social">
                    <img class="whatsapp" src="../assets/whatsapp.svg" alt="WhatsApp">
                    <img class="viber" src="../assets/viber.svg" alt="Viber">
                    <img class="telegram" src="../assets/telegram.svg" alt="Telegram">
                </div>
                <div class="user-info-comments">
                    <a src="#">Комментарии</a>
                </div>
            </div>


        </div>
        <div class="user-information">
            <div class="user-information-status">
                <p class="user-information-title">Статус</p>
                <div class="user-information-subtitle">
                    <div class="ui-icon"></div>
                    Активен
                </div>
            </div>
            <div class="user-information-pnone">
                <div class="ui-phone-children">
                    <p class="ui-phone-title">Телефон</p>
                    <p class="ui-phone-number">8-900-000-00-00</p>
                </div>
                <div class="ui-phone-parenst">
                    <p class="ui-phone-title">Телефон родителей</p>
                    <p class="ui-phone-number">8-900-000-00-00</p>
                </div>

            </div>
            <div class="user-information-birthday">
                <div class="ui-birthday">
                    <p class="ui-birthday-title">Дата рождения</p>
                    <p class="ui-birthday-date">25.04.2004(17 лет)</p>
                </div>
                <div class="ui-adress">
                    <p class="ui-adress-title">Адрес</p>
                    <p class="ui-adress-subtitle">г.Краснодар,ул.Советская 24, кв.208</p>
                </div>
            </div>
            <div class="user-information-buttons">
                <div>
                    <a src="#">
                        <img class="ui-button-edit" src="../assets/edit.svg">
                    </a>
                </div>
                <div>
                    <a src="#">
                        <img class="ui-button-delete" src="../assets/delete.svg">
                    </a>
                </div>

            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'UserPage'
}


</script>

<style scoped>
.user {

    position: relative;
    width: 1602px;
    height: 152px;
    left: 248px;
    top: -930px;
    border: 1px solid black;
    border-radius: 10px;
    background: white;
}



.user-icon {
    position: relative;
    margin: 20px;
    height: 112px;
    width: 112px;


}

.user-back {
    height: 112px;
    width: 112px;
    border-radius: 50%;
    background: #F2F5F8;

}

.user-avatar {
    position: absolute;
    left: 26%;
    top: 20%;

}



.user-name {
    position: absolute;
    left: 10.61%;
    top: 13.16%;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 700;
    font-size: 36px;
    line-height: 43px;
    color: #458AFB;
    text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
    -webkit-text-stroke: black 1px;
}

.avatar {
    position: absolute;
    left: 32.15%;
    top: 16.45%;
}

.whatsapp {
    position: absolute;
    left: 10.61%;
    top: 66.45%;
}

.viber {
    position: absolute;
    left: 12.8%;
    top: 66.45%;
}

.telegram {
    position: absolute;
    left: 14.98%;
    top: 66.45%;
}

.user-info-comments {
    position: absolute;
    left: 18.41%;
    top: 67.76%;
}


.user-information {
    display: flex;
    position: relative;
    top: -152px;
    left: 680px;
    text-align: left;
}

.user-information-status {
    margin-top: 91px;
    margin-right: 57px;
}

.user-information-title {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 17px;
    color: #86939C;

}

.user-information-subtitle {
    display: flex;
    flex-direction: row;
    align-items: center;
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    color: #0D2839;
}

.ui-icon {
    width: 9px;
    height: 9px;
    background: #9ECB45;
    border-radius: 2px;
    margin: 0 5px;
}

.user-information-pnone {
    margin-top: 19px;
    margin-right: 147px;
}

.ui-phone-children {}

.ui-phone-title {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 17px;
    color: #86939C;

}

.ui-phone-number {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    color: #0D2839;
}

.ui-phone-parenst {
    margin-top: 33px;
}

.user-information-birthday {
    margin-top: 19px;
    margin-right: 188px;
}

.ui-birthday {}

.ui-birthday-title {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 17px;
    color: #86939C;
}

.ui-birthday-date {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    color: #0D2839;

}

.ui-adress {
    margin-top: 30px;
}

.ui-adress-title {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 14px;
    line-height: 17px;
    color: #86939C;
}

.ui-adress-subtitle {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    color: #0D2839;

}

.user-information-buttons {}

.ui-button-edit {
    margin-top: 29px;
}

.ui-button-delete {
    margin-top: 44px;
}

.user-info-comments a {
    font-family: 'Alegreya Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    line-height: 22px;
    text-decoration-line: underline;
    color: #458AFB;
}
</style>