library(shiny)
library(shinyjs)


shinyServer(function(input, output, session) {
    
    # add or remove circles when clicking the radio button
    observeEvent(input$modelingtype, {
        if (input$modelingtype == "bestop") {
            print("1")
        } else if (input$modelingtype == "customop") {
            print("2")
        }
    }, ignoreInit = FALSE)
})

# shinyServer(function(input, output,session) {
#     observeEvent(input$modelingtype, {
#         if (input$modelingtype == "bestop") {
#             print("1")
#         } else if (input$modelingtype == "customop") {
#             print("2")
#         }
#     }, ignoreInit = TRUE)
# 
# })