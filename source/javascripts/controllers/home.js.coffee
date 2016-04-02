# =================================================================================================
#
# Make Home-Specific Function Calls
#
# ==================================================================================================

#= require "dom-router"

# ------------------------------------------------
# Create Index Module and Specify Function Calls
# ------------------------------------------------
OO.Home = ->

# Fit element to window
# ------------------------------------------------
  fitToBrowser = new OO.FitToBrowser
  fitToBrowser.fitToWindow()
