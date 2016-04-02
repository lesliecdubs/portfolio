# =================================================================================================
#
# Size Element to Browser Window
#
# ==================================================================================================

class LCW.FitToBrowser
  constructor: () ->
    @$element     = null
    appliedWidth  = null
    appliedHeight = null

    this

  # ------------------------------------------------
  # Create children
  # ------------------------------------------------
  createChildren: () ->
    @$element = $('.js-fit-to-window')

    this

  # ------------------------------------------------
  # Fit to window
  # ------------------------------------------------
  fitToWindow: () ->
    appliedWidth  = $(window).width()
    appliedHeight = $(window).height()

    console.log(appliedHeight)

    @$element.css 'height', appliedHeight

    this

  # ------------------------------------------------
  # Bind events
  # ------------------------------------------------
  bindEvents: () ->
    # On doc ready
    # -------------
    $(document).ready (->
      @fitToWindow()
    ).bind(@)

    # Run on window resize
    # ---------------------
    $(window).resize (->
      console.log 'resize'
      @fitToWindow()
    ).bind(@)

    # Run on device orientation change
    # ---------------------------------
    $(window).on 'orientationchange', (->
      @fitToWindow()
    ).bind(@)

    this

  # ------------------------------------------------
  # Init
  # ------------------------------------------------
  init: () ->
    @createChildren()
      .fitToWindow()
      .bindEvents()

    this
