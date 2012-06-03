jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip({placement: 'right'})
  $("a[rel=tooltip-t]").tooltip({placement: 'top'})
  $('.nav-tabs').button()
  $(".alert").alert()