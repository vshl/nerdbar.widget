command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000 # ms

render: (output) ->
    """
    <div class="vol">
    <span></span>
    <span class="icon"></span>
    </div>
    """

update: (output, el) ->
    $(".vol span:first-child", el).text("  #{output}")
    $icon = $(".vol span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-volume-up")

style: """
  -webkit-font-smoothing: antialiased
  font: 10px mononoki
  top: 6px
  right: 365px
  color: #ffffff
  span
    color: #ffffff
"""
