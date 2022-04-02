server <- function(input, output, session) {
  # hide dashboard by default:
  jqui_hide(
    ui = "#div_dashboard", 
    effect = "blind"
  )
  
  observe({
    # if user has made a selection:
    if (isTruthy(input$r_version)) {
      # first switch to tab `dashboard`:
      updateTabsetPanel(
        session = session, 
        inputId = "panels", 
        selected = "dashboard"
      )
      
      # then show it's contents:
      jqui_show(
        ui = "#div_dashboard", 
        effect = "blind", 
        duration = 500
      )
    }
  })
}
