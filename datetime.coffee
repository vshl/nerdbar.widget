command: "date +\"%b %d %a %l:%M %p\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <div class="cal"
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".cal span:first-child", el).text("  #{output}")
    $icon = $(".cal span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-calendar")

style: """
  -webkit-font-smoothing: antialiased
  color: #ffffff
  text-align: center
  font: 10px mononoki 
  right: 9px
  top: 6px
  span
    color: #ffffff
"""
