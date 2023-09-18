library(here)

types <- c("I. Selective Disclosure" = "I_selective_discl.png",
           "II. Empty Claims" = "placeholder.png",
           "III. Irrelevant" = "placeholder.png",
           "IV. Lies" = "placeholder.png",
           "V. Just Not Credible" = "placeholder.png",
           "VI. Corporate Responsibility in Action" = "placeholder.png",
           "VII. Dubious Certifications & Labels" = "placeholder.png",
           "VIII. Political Spin" = "placeholder.png",
           "IX. Co-opted Endorsement" = "placeholder.png",
           "X. No Proof" = "placeholder.png",
           "XI. Vagueness" = "placeholder.png",
           "XII. Misleading Symbols" = "placeholder.png",
           "XIII. Jargon" = "placeholder.png")

view <- c("Assessor" = "normal",
          "Notes" = "notes")

library(shiny)

fluidPage(
    tags$head(
      tags$style(HTML("
        body {
          font-family: 'Times New Roman', Times, serif;
        }
      "))
    ),

    # Application title
    titlePanel("Greenwash Framework"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(
        radioButtons("type", "Type:", types),
      radioButtons("view", "View:", view),
        width = 2
        ),
      mainPanel(
        width = 10,
        conditionalPanel(
          "input.view == 'normal'",
          imageOutput("displayImage")
        ),
        conditionalPanel(
          "input.view == 'notes' && input.type =='I_selective_discl.png'",
          htmlOutput("htmlText")
        )
      )
    )
)
