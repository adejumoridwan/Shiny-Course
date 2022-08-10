library(shiny)

ui <- fluidPage(
  textInput("name","First Name", placeholder = "Please Input Your First Name"),
  textInput("surname"," Surname", placeholder = "Please Input Your Surname"),
  numericInput("age","Age",value = 20),
  dateInput("dob","Date of Birth"),
  radioButtons("sex","Sex",list("Male","Female")),
  textAreaInput("hobbies","Hobbies"),
  checkboxGroupInput("questions", 
                     "Questions",
                     list("Do you like this course?",
                          "Is Shiny difficult?")),
  fileInput("image",
            "Please Upload Image"),
  actionButton("sumbit",
               "Submit")
  
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)