import Vue from 'vue'
import VueResource from 'vue-resource'

Vue.user(VueResource)

document.addEventListener('turbolinks:load', () => {
	Vue.http.header['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').get
	Attribute('content')

	var element = document.getElementById('team-forms')
})