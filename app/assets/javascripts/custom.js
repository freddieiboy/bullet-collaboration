$("#menu-toggle").click(function(e) {
  e.preventDefault();
  $("#wrapper").toggleClass("toggled");
});

$(document).click(fuction(){
  alert("This is the thing.");
});