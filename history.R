library(shiny)

# Define UI ----
ui <- fluidPage(
  fluidRow(
    column(2,
           navlistPanel(
             tabPanel("Rider"),
             tabPanel("Rider"),
             tabPanel("Rider"),
             tabPanel("Rider"),
             tabPanel("Rider"),
             
           ),
    ),
    column(10,
  titlePanel("History of Simulations"),
  hr(STYLE="background-color:#000000; height:5px; width:100%;"),
  
  fluidRow(
    
    column(3,
      h3("Date",align = "left"),
    ),
    column(8,
      h3("Attributes(e.g. Riders,Start Order.)"),
    ),
  ),
  #hr(STYLE="0;width=1; size=500;" ),
  hr(STYLE="background-color:#000000; height:5px; width:100%;"),
  fluidRow(
    column(3,
           h4(textOutput("currentTime")),
    ),
    column(3,
    ),
    column(3,
    ),
    column(3,
           actionButton("view", "View"),
    )),
  hr(STYLE="background-color:#000000; height:1px;width=1;rotate(90deg)"),
)
)
)

# Define server logic ----
server <- function(input, output,session) {
    output$currentTime <- renderText({
      paste( Sys.Date())
})
}

# Run the app ----
shinyApp(ui = ui, server = server)

