command: "/usr/local/bin/istats cpu temperature --no-graphs | awk '{print $3}'"

refreshFrequency: 10000 # ms

render: (output) ->
    """
    <div class="cputemp">
    <span></span>
    <span class="icon"></span>
    </div>
    """

update: (output, el) ->
    $(".cputemp span:first-child", el).text("  #{output}")
    $icon = $(".cputemp span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-thermometer-full")

style: """
  -webkit-font-smoothing: antialiased
  color: #ffffff
  font: 10px mononoki 
  right: 299px
  top: 6px
  span
    color: #ffffff
"""
