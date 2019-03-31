// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"
import VueResource from 'vue-resource'

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"

Vue.use(VueResource);

var app = new Vue({
    el: '#app',
    data: {
        expression: 'Hello Vue!'
    },
    methods: {
        submit: function () {
            this.$http.post('/api/v1/calculator', {data: {expression: this.expression}}, { headers: { "content-type": "application/json" } })
                .then(result => {
                    console.log(result)
                }, error => {
                    console.error(error)
                })
        }
    }
});