# =================================================================================================
#
# DOM Routing
#
# ==================================================================================================

# ------------------------------------------------
# Specify Namespace Object
# ------------------------------------------------
window.OO       ||= {}
window.OO.Cache ||= {}

# ------------------------------------------------
# Call Page Specific JS
# ------------------------------------------------
OO.runPageJs = () ->
  if controller = document.body.getAttribute("data-router")
    OO.Cache[controller] ||= OO[controller]
    if OO.Cache[controller] then OO.Cache[controller]()

# ------------------------------------------------
# Call on Doc Ready
# ------------------------------------------------
document.addEventListener 'DOMContentLoaded', ->
  OO.runGlobalJS()
  OO.runPageJs()
