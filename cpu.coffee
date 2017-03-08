command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
    """
    <div class="cpu">
    <span></span>
    <span class="icon"></span>
    </div>
    """

update: (output, el) ->
    $(".cpu span:first-child", el).text("  #{output}")
    $icon = $(".cpu span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bar-chart")

style: """
  -webkit-font-smoothing: antialiased
  color: #ffffff
  font: 10px mononoki 
  right: 190px
  top: 6px
  span
    color: #ffffff
"""
