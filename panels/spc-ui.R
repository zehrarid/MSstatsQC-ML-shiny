library(shiny)

spc <- fluidPage(
  fluidRow(
    column(5,
           fluidRow(
             column(8,
                    fluidRow(column(5,),column(2,style="padding: 1%",align="center",strong("1.Upload"),br(),uiOutput("upload_mark")),column(5,)),
                    wellPanel(
                      p(strong("Upload File:")),
                      p("Upload your data (Comma-separated (*.csv) QC file format)"),
                      p("To see acceptable example data, look at", strong("Help"),"tab"),
                      fluidRow(column(9,uiOutput("mod2_upload_component1")),
                               column(3,br(),div(style='padding-top:15px',tipify(actionButton("showguide", "", icon = icon("fullscreen", lib = "glyphicon")),"Click to View Guideset")))
                      ),
                      fluidRow(column(9,uiOutput("mod2_upload_component2")),
                               column(3,br(),div(style='padding-top:15px',tipify(actionButton("showtest", "", icon = icon("fullscreen", lib = "glyphicon")),"Click to View Testset")))
                      ))
             ),
             fluidRow(
               column(8,
                      fluidRow(column(5,),column(2, style="padding: 1%", align="center",strong("2.Threshold"),br(),uiOutput("threshold_mark")),column(5,)),
                      wellPanel(
                        p(strong("Create Your Decision Rules:")),
                        div(p(strong("RED FLAG"), style="color:black; background-color: red;",align = "center",style="font-size:125%;"),
                            fluidPage(p(strong("System performance is UNACCEPTABLE when:"),align = "center"),
                                      p("peptides greater than the selected % of peptides are", strong("out of control")),
                                      fluidRow(
                                        column(6,
                                               div(style ="padding-top:15%;", strong("% out of control peptides: "))),
                                        column(6,
                                               numericInput('threshold_peptide_red', '', value = 70, min = 0, max = 100, step = 1)
                                        )
                                      ))),
                        div(p(strong("YELLOW FLAG"), style="color:black; background-color: #ffd700;",align = "center",style="font-size:125%;"),
                            fluidPage(p(strong("System performance is POOR when:"),align = "center"),
                                      p(" peptides greater than the selected % of peptides are", strong("out of control")),
                                      p("Warning:The limits should be less than or equal to the the RED FLAG limit") ,
                                      fluidRow(
                                        column(6,
                                               div(style ="padding-top:15%;", strong("% of out of control peptides: "))),
                                        column(6,
                                               uiOutput("peptideThresholdYellow")),
                                      ))),
                        div(p(strong("BLUE FLAG"), style="color:white; background-color: blue;",align = "center",style="font-size:125%;"),
                            fluidPage(
                              p(strong("System performance is ACCEPTABLE when:"),align = "center"),
                              p("RED FLAG and YELLOW FLAG limits are not exceeded.")
                            )
                        )
                      )))))))
