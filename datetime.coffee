command: "date +\"%b %d %a %l:%M %p\""

refreshFrequency: 10000 # ms

render: (output) ->
  "#{output}"

style: """
  -webkit-font-smoothing: antialiased
  color: #ffffff
  text-align: center
  font: 10px mononoki 
  right: 255px
  top: 6px
  span
    color: #ffffff
"""
