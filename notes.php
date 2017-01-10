Notes:

Color
 - #ca3f4e : red background

 Property overriding (from lowest to highest):
 - Override style in subsequent CSS
 - Override class declarations by styling ID attributes
 - Override class declarations with inline styles
 - Override all others styles by using !important

<style media="screen">

BOOTSTRAP CLASS (Cheat Sheet):
 container-fluid
 img-responsive
 text-center
 btn (normal button design) {
 -default
 -block (100% width in page)
 -primary (Blue)
 -info (Light Blue)
 -danger (Destructuve Action: Red)
 }
 target (for hover)
 row
 col-xs-4 (column-extra small-column span 4)
 col-md-* (Medium for laptop)
 well

</style>

<script type="text/javascript">

JQuery (Cheat Sheet)
$(document).ready(function() { //syntax
  $("element by id or class or tag").function("properties or changes")
  $("#target1").css("color", "red");
  $("#target1").prop("disabled", true);
  $("#target4").remove();
  $("#target4").html("<em>#target4</em>");
  $("#target2").appendTo("#right-well");
  $("#target2").clone().appendTo("#right-well"); //function chaining
  $("#target1").parent().css("background-color", "red"); //parent element
  $("#right-well").children().css("color", "orange"); //child element
  $(".target:nth-child(2)").addClass("animated bounce"); // nth-child(1) funtcton
  $(".target:even").addClass("animated shake");
  $("body").addClass("animated hinge");
})
</script>
