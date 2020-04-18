library(shiny)

# I have made this app as simple as I can possibly make it and it still won't publish
# I don't know what to do next, so I will have to wait for OH to resolve this issue

ui <- navbarPage("Replication: The Distributive Politics of Enforcement",

            tabPanel("Replication Paper",
                     mainPanel(
                       uiOutput("my_pdf1")
                     )
                     ),
            tabPanel("Credits",
                     htmlOutput("acknowledgements"))
            
                )


server <- function(input, output) {
  
  output$acknowledgements <- renderText({
    
    # This is the thanks portion. The project is mine, but I must give credit
    # where it is due and these people aided me either in design or overcomming
    # a technical difficulty. 
    
    '<h4><b>Acknoweldgements:</b></h4>
        <ul>
          <li>Thanks to Dr. David Kane, Alice Xu, Debora Gonzalez, Robert McKenzie, Maria Burzillo, and 
          the rest of the Spring 2020 edition of Gov 1006 (may it go down in history) for all of the help and advice. 
          <li>I would also like to thank Rstudio and Rstudio Community for providing so many exceptional resources.</li>
        </ul>
      Author: Beau Meche<br/>
      Contact: beau_meche@college.harvard.edu<br/>
      <a href="https://www.linkedin.com/in/beaumeche22/">Connect on LinkedIn</a>'
    
  })
  
  output$my_pdf1 <- renderUI({
    tags$iframe(style="height:600px; width:100%", src="Meche_enforcement_variance.pdf")
  })
  
}


shinyApp(ui = ui, server = server)






# shinyUI(fluidPage(
#   sidebarLayout(
#     sidebarPanel(
#       h5("use case - embed a pdf user gride in the app - embed as a local pdf of from web URL")
#     ),
#     mainPanel(
#       tabsetPanel(
#         #using iframe along with tags() within a tab to display pdf with scroll, h and w can be adjusted
#         tabPanel("Replication Paper",
#                  tags$iframe(style = "height:400px; width:100%; scrolling=yes",
#                              src = "Meche_enforcement_variance.pdf"))
#       )
#     )
#   )
# ))
# 
# 
