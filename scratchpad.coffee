command: "/usr/local/bin/kwmc query scratchpad list | wc -l | awk '{print $1}'"

refreshFrequency: 5000 # ms

render: (output) ->
    """
    <div class="scratchpad">
    <span></span>
    <span class="icon"></span>
    </div>
    """

update: (output, el) ->
    $(".scratchpad span:first-child", el).text("  #{output}")
    $icon = $(".scratchpad span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-pencil-square-o")

style: """
  -webkit-font-smoothing: antialiased
  color: #ffffff
  text-align: center
  font: 10px mononoki 
  right: 342px
  top: 6px
  span
    color: #ffffff
"""
