/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      savedSearchItem [],
      food []
    },
  mounted: {
      
    },
    methods: {
      userSearchAttribute: function(userInput) {
      var savedSearchItem = this; 
      $('.resultContainer').html('');
        axios.get('https://api.nutritionix.com/v1_1/search/taco?results=0%3A50&cal_min=0&cal_max=50000&fields=item_name%2Cbrand_name%2Citem_id%2Cbrand_id&appId=2a67dbb4&appKey=eab1d2899f63f45de8177c6e513b443a'),
        .then(function (food) {
          savedSearchItem = food.hits;
          }
        });

        console.log(savedSearchItem);
      }

      savedSearchItem.map(funtion(item) {
        var a = item.fields
        $('.resultContainer').append(
          '<div class="itemBar">' +
            '<h2>' + a.item.item_name + '<h2>' +
            '<h3>' + a.brand_name + '<h3>' +
          '</div>'
          );
      };
      searchValue() {
        var formVal = document.getElementById('searchBar').value;
        getResult(formVal);
      }

      $('#searchForm').submit(function(s) {
        s.preventDefault();
      });
    },
    computed: {

    }
  });
});