<template>
  <div class="container">
    <SideBar />
    <HeaderPage />
    <UserPage />
    <div class="selects">
      <div>
        <div class="select">
          <span>Тип документа:</span>
          <MySelect 
            :options="sortOptions" 
            @select="optionSelectType" 
            v-model="idSortOrder" 
            :selected="selectedType" 
          />
        </div>
        <div class="select">
          <span>Статус:</span>
          <MySelect 
            :options="filterOption" 
            @select="optionSelectStatus" 
            v-model="statusFilter" 
            :selected="selectedStatus" 
          />
        </div>
        <div class="select">
          <span>Сортировать по:</span>
          <MySelect 
            :options="dateOptions" 
            @select="optionSelectDate" 
            v-model="dateSortOrder"
            :selected="selectedDate" />
        </div>
      </div>
      <button class="button-window" @click="showWindow">Добавить документ</button>
    </div>
    <div class="mydocument">
      <MyDocument :posts="sortedPosts" />
    </div>
    <ModalWindow v-model:show="windowVisible" />
  </div>
</template>

<script>
import SideBar from './components/SideBar.vue'
import HeaderPage from './components/HeaderPage.vue'
import UserPage from './components/UserPage.vue'
import MyDocument from './components/MyDocument.vue'
import ModalWindow from './components/ModalWindow.vue'
import MySelect from './components/MySelect.vue'



export default {
  name: 'App',
  components: {
     SideBar, HeaderPage, UserPage, MyDocument, ModalWindow,  MySelect,
  },
  data() {
    return {
      posts: [],
      windowVisible: false,
      idSortOrder: '',
      statusFilter: '',
      dateSortOrder: '',
      selectedType: 'Не выбрано',
      selectedStatus: 'Не выбрано',
      selectedDate: 'Не выбрано',
      sortOptions: [
        { value: '', name: 'Не выбрано' },
        { value: 'Договор', name: 'Договор' },
        { value: 'Справка', name: 'Справка' },
        { value: 'Другое', name: 'Другое' },
      ],
      filterOption: [
        { value: '', name: 'Не выбрано' },
        { value: 'Заключен', name: 'Заключен' },
        { value: 'Расторгнут', name: 'Расторгнут' },
      ],
      dateOptions: [
        { value: '', name: 'Не выбрано' },
        { value: 'asc', name: 'Дате' },
        { value: 'desc', name: 'Убыванию' },
      ],

    }
  },
  computed: {
    sortedPosts() {
      let sorted = this.posts.slice() 
      if (this.idSortOrder) {
        sorted = sorted.filter(post => post.type === this.idSortOrder)
      }
      if (this.statusFilter) {
        sorted = sorted.filter(post => post.description === this.statusFilter)
      }
      if (this.dateSortOrder === 'asc') {
        sorted.sort((a, b) => new Date(a.date.split(' - ')[0]) - new Date(b.date.split(' - ')[0]))
      } else if (this.dateSortOrder === 'desc') {
        sorted.sort((a, b) => new Date(b.date.split(' - ')[0]) - new Date(a.date.split(' - ')[0]))
      }
      return sorted
    }
  },
  methods: {
    async fetchUsers() {
      await fetch('http://localhost:3000/api/v1/tasks')
        .then(response => response.json())
        .then(json => this.posts = json)

    },
    showWindow() {
      this.windowVisible = true;

    },
    optionSelectType(option) {
      this.idSortOrder = option.value
      this.selectedType = option.name
    },
    optionSelectStatus(option) {
      this.statusFilter = option.value
      this.selectedStatus = option.name
    },
    optionSelectDate(option) {
      this.dateSortOrder = option.value
      this.selectedDate = option.name
    }
  },

  mounted() {
    this.fetchUsers()

  },


}
</script>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  background: #F2F5F8;
  width: 1920px;
  overflow-y: hidden;
  ;

}

.container {
  background: #F2F5F8;
  height: 956px;
  ;
}

.selects {
  position: relative;
  left: 248px;
  top: -839px;
  display: flex;
  justify-content: space-between;
  width: 1602px;
  height: 40px;
  
}

.mydocument {
  display: flex;
  flex-wrap: wrap;
  justify-content: start;
  width: 1602px;
  position: relative;
  top: -803px;
  left: 248px;

}

.button-window {
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
  color: #FFFFFF;
}

span {
  font-family: 'Alegreya Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 14px;
  line-height: 17px;
  color: #86939C;
}


.selects div {
  display: flex;
}




.select {
  display: flex;
  flex-direction: column;
  margin-right: 164px;
}

.select span {
  text-align: left;
}

a {
  cursor: pointer;
}
</style>
