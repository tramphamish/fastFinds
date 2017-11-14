function getResult(userInput) {
  var storedSearchItem;
  $('.resultContainer').html('');
  $.ajax({
    type: 'GET',
    async: false,
    url: 'https://api.nutritionix.com/v1_1/search/'+userInput+'?'+
    'fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=2a67dbb4&appKey=eab1d2899f63f45de8177c6e513b443a',
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

function searchValue() {
  var formVal = document.getElementById('searchBar').value;
  getResult(formVal);
}

$('#searchForm').submit(function(e) {
  e.preventDefault();
});