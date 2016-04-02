# =================================================================================================
#
# DOM Routing
#
# ==================================================================================================

# ------------------------------------------------
# Specify Namespace Object
# ------------------------------------------------
window.LCW       ||= {}
window.LCW.Cache ||= {}

# ------------------------------------------------
# Call Page Specific JS
# ------------------------------------------------
LCW.runPageJs = () ->
  if controller = document.body.getAttribute("data-router")
    LCW.Cache[controller] ||= LCW[controller]
    if LCW.Cache[controller] then LCW.Cache[controller]()

# ------------------------------------------------
# Call on Doc Ready
# ------------------------------------------------
document.addEventListener 'DOMContentLoaded', ->
  LCW.runGlobalJS()
  LCW.runPageJs()
