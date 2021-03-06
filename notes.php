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
  $("element by id or class or tag").function("properties or changes");
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
});
</script>

brother

You are both special in every way,
Encouraging me more and more each passing day.

You both are the reason why I'm so strong,
With you two at the helm not a thing could go wrong.

You've both helped me through many trials and tribulations,
You've made things better in every situation.

Thank you both for always being there,
And showing me that you truly care.

Words could never explain how I feel about you,
But I hope you know that I truly love you two!

Source: http://www.familyfriendpoems.com/poem/ode-to-loving-parents
