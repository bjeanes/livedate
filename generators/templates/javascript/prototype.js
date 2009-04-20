document.observe("dom:loaded", function() {

  $$("input.live-date").each(function(input) {
    input.observe('change', function() {
      new Ajax.Request('/parsedate', {
        parameters: { date: this.value },
        method: 'GET',
        onSuccess: function(response) {
          input.value = response.responseText;
        }
      })
    });
  });

  $$("input.live-datetime").each(function(input) {
    input.observe('change', function() {
      new Ajax.Request('/parsedate', {
        parameters: { datetime: this.value },
        method: 'GET',
        onSuccess: function(response) {
          input.value = response.responseText;
        }
      })
    });
  });

});
