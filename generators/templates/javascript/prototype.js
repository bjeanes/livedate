document.observe("dom:loaded", function() {  
  function checkDate(input, params) {
    new Ajax.Request('/parsedate', {
      parameters: params,
      method: 'GET',
      onSuccess: function(response) {
        input.value = response.responseText;
      }
    });
  }
  
  $$("input.date").each(function(input) {
    input.observe('change', function() {
      checkDate(input, { date: this.value });
    });
  });
  
  $$("input.datetime").each(function(input) {
    input.observe('change', function() {
      checkDate(input, { datetime: this.value });
    });
  });  
});
