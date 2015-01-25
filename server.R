AforeData <- read.csv("AforeData.csv")
AgeBrackets <- c(36, 45, 59, 65)

Savings <- function(age,afore) {
     if (age<AgeBrackets[1]) {
          (1+AforeData[afore,2])^(AgeBrackets[1]-age)+(1+AforeData[afore,3])^(AgeBrackets[2]-AgeBrackets[1])
          +(1+AforeData[afore,4])^(AgeBrackets[3]-AgeBrackets[2])+(1+AforeData[afore,5])^(AgeBrackets[4]-AgeBrackets[3])
     }
     else if(age<AgeBrackets[2]){
          (1+AforeData[afore,3])^(AgeBrackets[2]-age)+(1+AforeData[afore,4])^(AgeBrackets[3]-AgeBrackets[2])
          +(1+AforeData[afore,5])^(AgeBrackets[4]-AgeBrackets[3])
     }
     else if(age<AgeBrackets[3]) {
          (1+AforeData[afore,4])^(AgeBrackets[3]-age)+(1+AforeData[afore,5])^(AgeBrackets[4]-AgeBrackets[3])
     }
     else {
          (1+AforeData[afore,5])^(AgeBrackets[4]-age)
     }    
}

shinyServer(
     function(input, output) {
          output$inputAge <- renderPrint({input$age})
          output$inputAfore <- renderText(as.character(AforeData[input$afore,1]))
          output$savings <- renderPrint({Savings(input$age,as.numeric(input$afore))})
     }
)