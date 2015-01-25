library(shiny)

shinyUI(
     pageWithSidebar(
          # Application title
          headerPanel("AFORE Savings Calculator (Retirement Funds in Mexico)"),
          
          sidebarPanel(
               numericInput('age', 'Age (years)', 40, min = 18, max = 64, step = 1),
               selectInput('afore', "Choose your AFORE:", choices = c('Azteca'=1,'Banamex'=2, 'Banorte'=3, 'Coppel'=4,'GNP'=5,'Inbursa'=6,'Invercap'=7,'ISSSTE'=8,'MetLife'=9,'Principal'=10,'SURA'=11)),
               submitButton('Submit')
          ),
          mainPanel(
               h4('You entered age:'),
               verbatimTextOutput("inputAge"),
               h4('And afore:'),
               verbatimTextOutput("inputAfore"),
               h4('For each MXN (MX Peso) in your AFORE account today, you will have: '),
               verbatimTextOutput("savings"),
               p('MXN (MX Peso) at retirement age (65, not adjusted for inflation)'),
               p('Using data from CONSAR (date pulled: Jan/25/2015)')
          )
     )
)