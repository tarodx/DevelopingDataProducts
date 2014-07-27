library(shiny)

shinyServer(function(input, output) {
                
        output$fromc <- renderPrint({c(input$c_from) })
        output$toc <- renderPrint({c(input$c_to) })
        
        convertion <- reactive({
                        
                        if(input$c_from == input$c_to){
                                input$num
                        }
                        else if(input$c_from == "eur" & input$c_to == "usd"){
                                1.34300 * as.numeric(input$num)
                        }
                        else if(input$c_from == "eur" & input$c_to == "gbp"){
                                0.79107 * as.numeric(input$num)
                        }
                        else if(input$c_from == "usd" & input$c_to == "eur"){
                                0.74460 * as.numeric(input$num)
                        }
                        else if(input$c_from == "usd" & input$c_to == "gbp"){
                                0.58903 * as.numeric(input$num)
                        }                        
                        else if(input$c_from == "gbp" & input$c_to == "eur"){
                                1.26411 * as.numeric(input$num)
                        }
                        else if(input$c_from == "gbp" & input$c_to == "usd"){
                                1.69770 * as.numeric(input$num)
                        }                        
                })    
        
        # Show results
        output$conversion <- renderPrint({c(convertion())})       
})
