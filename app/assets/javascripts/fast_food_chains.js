function getResult(userInput) {
  var storedSearchItem;
  $('.resultContainer').html('');
  $.ajax({
    type: "GET",
    async: false,
    url: "https://api.nutritionix.com/v1_1/search/"+userInput+"?"+"results=0%3A50&cal_min=0&cal_max=50000&fields=item_name%2Cbrand_name&appId=2a67dbb4&appKey=7a2aa80deba0f172435896c5780b71f4",
    success: function(d) {
      storedSearchItem = d.hits;
    }
  });

  storedSearchItem.map(function(item) {
    var x = item.fields
    $('.resultContainer').append(
      '<div class="itemBar">'+
        '<h2>' + x.item_name + '<h2>' +
        '<h3>Calories: ' + x.brand_name + '<h3>' +
      '</div>'
      );
  });
}

function searchForm() {
  var formVal = document.getElementById('searchBar').value;
  console.log(formVal);
}

$('#searchForm').submit(function(e) {
  e.preventDefault();
  searchValue();
});