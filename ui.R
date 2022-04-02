# ----dashboard header----
header <- dashboardHeader(
  title = "My Dashboard"
)

# ----dashboard sidebar-----
sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem(
      text = "Menu 1", 
      tabName = "menu1", 
      selected = TRUE
    ), 
    
    menuItem(
      text = "Menu 2", 
      tabName = "menu2"
    ), 
    
    menuItem(
      text = "Menu 3", 
      tabName = "menu3"
    )
  )
)

# ----dashboard body----
body <- dashboardBody(
  tabItems(
    tabItem(
      tabName = "menu1", 
      
      tags$h3(
        "Menu 1 Should Appear Here!"
      )
    ), 
    
    tabItem(
      tabName = "menu2", 
      
      tags$h3(
        "Menu 2 Should Appear Here!"
      )
    ), 
    
    tabItem(
      tabName = "menu3", 
      
      tags$h3(
        "Menu 3 Should Appear Here!"
      )
    )
  )
)

# ----ui----
ui <- tabsetPanel(
  id = "panels", 
  type = "hidden", 
  selected = "landing_page", 
  
  tabPanelBody(
    value = "landing_page", 
    
    # link css stylesheet:
    includeCSS(path = "www/css/styles.css"), 
    
    tags$div(
      class = "landing_page_container", 
      
      tags$div(
        class = "landing_page_header", 
        
        tags$div(
          class = "landing_page_logo", 
          
          tags$a(
            href = "#", 
            
            tags$h3(
              tags$span(
                shiny::HTML(
                  text = "<strong>our</strong><span>series.org</span>"
                ), 
                
                icon(
                  name = "code", 
                  class = "fa-solid fa-code"
                )
              )
            )
          )
        ), 
        
        tags$div(
          class = "landing_page_welcome", 
          
          tags$h3(
            "Welcome!"
          )
        )
      ), 
      
      tags$div(
        class = "landing_page_body", 
        
        tags$div(
          class = "landing_page_content", 
          
          tags$div(
            class = "text_content", 
            
            tags$div(
              class = "some_text", 
              
              tags$h1(
                tags$strong(
                  "TIED UP", 
                  
                  style = "font-size: 200%"
                )
              )
            ), 
            
            tags$div(
              class = "more_text", 
              
              tags$h3(
                "Your Dream R Shiny Landing Page"
              )
            )
          ), 
          
          tags$div(
            class = "select_something", 
            
            selectInput(
              inputId = "r_version", 
              label = "", 
              choices = c(
                "Which Was Your First R Version?" = "", choices
              ), 
              selected = NULL, 
              width = "100%"
            )
          )
        )
      )
    )
  ), 
  
  tabPanelBody(
    value = "dashboard", 
    
    # ----dashboardpage----
    tags$div(
      id = "div_dashboard", 
      
      dashboardPage(
        header = header, 
        sidebar = sidebar, 
        body = body, 
        title = "Landing Page"
      )
    )
  )
)
