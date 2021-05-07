library(shiny)
library(shinyjs)
shinyUI(fluidPage(
    # Application title
    titlePanel("Custom linear model for mtcars data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h2("Inputs"),
            useShinyjs(),
            radioButtons("modelingtype", "Regression option:",
                         c("Select best model" = "bestop",
                           "Select variables" = "customop")),
            numericInput("varnumber","How many variables do you need for the best model",
                         value = 10,min = 1,max = 10,step = 1),
            checkboxGroupInput("variables", "Select variables:",
                               c("cyl - Number of cylinders" = "cyl",
                                 "disp - Displacement (cu.in.)" = "disl",
                                 "hp - Gross horsepower" = "hp",
                                 "drat - Rear axle ratio" = "drat",
                                 "wt - Weight (1000 lbs)" = "wt",
                                 "qsec - 1/4 mile time" = "qsec",
                                 "vs - Engine" = "vs",
                                 "am - Transmission" = "am",
                                 "gear - Number of forward gears" = "gear",
                                 "carb - Number of carburetors" = "carb",
                                 "All of the variables" = "all")),
            checkboxGroupInput("reportoutput", "Report output:",
                               c("Statistical summary of the data" = "stat",
                                 "Hypothesis testing" = "hypo",
                                 "Model summary" = "modelsum",
                                 "Residual diagnostics" = "resdiag",
                                 "All of the above" = "all")),
            actionButton("gatherinput", "Generate Model", icon = icon("cogs"))
            
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h2("Details of the model selected"),
            textOutput("ModelDetail"),
            h2("Residual diagnostic plot"),
            plotOutput("distPlot"),
            
            # submitButton("Generate report",icon = icon("file-alt")),
        )
    )
))
