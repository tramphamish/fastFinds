/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      message: "Fast Finds",
      resultElement: [],
      food: []
    },
  mounted: {
      
    },
    methods: {
      function userSearchAttribute(userInput) {
      var resultElement = document.getElementById('getResult'); 
      resultElement.innerHTML = '';

        axios.get('https://api.nutritionix.com/v1_1/search/' + userInput + '?' + 'results=0%3A50&cal_min=0&cal_max=50000&fields=item_name%2Cbrand_name%2Citem_id%2Cbrand_id&appId=2a67dbb4&appKey=eab1d2899f63f45de8177c6e513b443a')
        .then(function (response) {
          resultElement.innerHTML = generateSuccessHTMLOutput(response);
        })
        .catch(function (error) {
          resultElement.innerHTML = generateErrorHTMLOutput(error);
        });
      }

      resultElement.map(function (item) {
        var a = item.fields
        $('.resultContainer').append(
          '<div class="itemBar">' +
            '<h2>' + a.item_name + '<h2>' +
            '<h3>' + a.brand_name + '<h3>' +
          '</div>'
          );
      });
    }
      function searchValue() {
        var formVal = document.getElementById('searchBar').value;
        getResult(formVal);
      }

      $('#searchForm').submit(function(x) {
        x.preventDefault();
      });
    },
    computed: {

    }
  });
});