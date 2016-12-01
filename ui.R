ibrary(shiny)


shinyUI(fluidPage(
    img(src = "logos.png", width = 400),
    titlePanel(title=h4("The predicted next word",style = "color:blue" )),
    h6("This project is for the Coursera Data Science specialization in cooperation with SwiftKey."),
    p(" "),
    sidebarLayout(
      sidebarPanel(h5("Enter your text"),
                   textInput("entry","","")
                   
                   ),#fin  sidebarPanel
      mainPanel(
               
                tabsetPanel(type="tab",
            #
               
            tabPanel(h5("Next word:"),
                
                 p(" "),
                 p(" "),
                 p(" "), 
                 p(" "),
                 textOutput("text1"),
                
                tags$head(tags$style("#text1{color: red;
                                 font-size: 20px;
                                     font-style: italic;
                                     }"
                         )
                )#fin ags$head
                ###########################
            ),# fin tabPanel
            
            tabPanel("Help",
                     
                     "The main goal of this  project is to build a shiny application that is able to predict the next word.",
                     "After creating a data sample from the HC Corpora data, this sample was cleaned by conversion to lowercase, removing punctuation, links, white space, numbers and all kinds of special characters.",
                     p(""),
                      "This data sample was then tokenized into so-called n-grams.
                     
                     In the fields of computational linguistics and probability, an n-gram is a contiguous sequence of n items from a given sequence of text or speech. (Source)
                     Those aggregated bi-,tri- and quadgram term frequency matrices have been transferred into frequency dictionaries.",
                     p(""),
                     
                     "The resulting data.frames are used to predict the next word in connection with the text input by a user of the described application and the frequencies of the underlying n-grams table.",
                     p(""),
                     "-The whole code of this application, as well as all the milestone report, related scripts, this presentation etc. can be found in this  repo:",a(href="https://github.com/santiagoeguren/Coursera-Data-Science-Capstone-Project","GitHub"),
                     
                     p(""),
                     "-This pitch deck is located here:",a(href="http://rpubs.com/santiagoe/capeguren","RPubs"),
                     p("")
                     
                     )
            
                
                
                
                )#tabsetPanel
                
                
                
                
                
                )#final mainPnael
      
      
    )#fin sidebarLayout
  
)#fin fluidPage 
)#fin shinyUI
