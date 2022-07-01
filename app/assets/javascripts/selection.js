$(document).ready(function (){
  $('#selectAll').on("change", function(){
      var cbxs = $('.select-ids');
      cbxs.prop("checked", !cbxs.prop("checked"));
      enableDisableDeleteAction($(this).prop('checked'))
  });

  $('.select-ids').on("change", function(){
      var atLeastOneIsChecked = $('.select-ids:checkbox:checked').length > 0;
      enableDisableDeleteAction(atLeastOneIsChecked)
  });

})
function enableDisableDeleteAction(checked) {
  if (checked){
      $('.delete_all').removeAttr('disabled')
  }else {
      $('.delete_all').attr('disabled', 'disabled')
  }
}