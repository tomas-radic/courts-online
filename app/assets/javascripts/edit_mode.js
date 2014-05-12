
/* 
Enables or disables "edit mode". Edit mode shows delete buttons to enable the user to delete
some records. 
Parameters:
  caption: a caption to set back to the edit mode button when leaving edit mode.
*/
function toggleEditMode(caption) {
  var editButton = $("#edit-records");        // button enabling/disabling edit mode
  var deleteButtons = $(".delete-record");    // all buttons used for deleting records

  if (editButton == null || deleteButtons == null)
    return;

  // Change caption of the button to "Hotovo" while in edit mode, or set to specified caption when leaving edit mode
  if (deleteButtons.css('display') == 'none') {
    editButton.text("Hotovo");
  }
  else {
    editButton.text(caption);
  }
  
  // Show or hide
  deleteButtons.toggle();
  if (deleteButtons.css('display') == 'block')
    deleteButtons.css('display') == 'inline-block';
}
