library(shiny)
library(shinyjs)

shinyServer(function(input, output,session) {
    observeEvent(input$modelingtype,{
        if(input$modelingtype=="bestop"){
            disable("variables")
            enable("varnumber")
        }else{
            disable("varnumber")
            enable("variables")
        }
        print(input$modelingtype)
        # 
        # observeEvent(input$varnumber,
        #              
        #              )
    })
    

})
