$(document).ready(function() {
  $('input.date').live("change", function() {
    input = this;
    $.get('/parsedate', { date: this.value }, function(result) {
      input.value = result;
    });
  });
  
  $('input.datetime').live("change", function() {
    input = this;
    $.get('/parsedate', { datetime: this.value }, function(result) {
      input.value = result;
    });
  });
});
