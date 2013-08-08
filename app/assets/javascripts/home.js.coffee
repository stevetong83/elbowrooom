$ ->
  setInterval ->
#     var divs = [];
# $("#main").find('div').each(function() {
#     divs.push(this);
# }).hide();

# // Show them...
# var showDiv = function() {
#     // Don't show them if there are no divs to show
#     if (divs.length <= 0) return;

#     // shift() pops the front element off of the list.
#     // We'll fade it in for 500 milliseconds, then repeat
#     // this process on another div.
#     $(divs.shift()).fadeIn(500,showDiv);
# }

# showDiv();