library(shiny)

shinyUI(
        pageWithSidebar(
                headerPanel("Currency converter"),               
                sidebarPanel(
                        selectInput("c_from", "Choose your currency from:", choices = c("eur", "usd", "gbp")),
                        selectInput("c_to", "Choose your currency to:", choices = c("eur", "usd", "gbp")),
                        numericInput("num", label = "Convert:", value = 1)
                ),
                
                mainPanel(
                        h4("Selected currency:"), 
                        verbatimTextOutput("fromc"), 
                        h4("Convert to:"),
                        verbatimTextOutput("toc"),
                        h4("Conversion:"),
                        verbatimTextOutput("conversion")
                )
        ))