bootstrapPage(
  
  #selectInput(inputId = "separaciones",
  #            label = "Seleccione escala de análisis:",
  #            choices = c(5, 10, 15,20),
  #            selected = 5),
  
  checkboxInput(inputId = "osbervaciones_individuales",
                label = strong("Especies con largo de petalo mayor de la media"),
                value = FALSE),
  
  checkboxInput(inputId = "densidad",
                label = strong("Correlación entre Largo y Ancho de Petalos"),
                value = FALSE),
  
  plotOutput(outputId = "grafica_principal", height = "300px")
  
  # Display this only if the density is shown
 # conditionalPanel(condition = "input.densidad == true",
#                   sliderInput(inputId = "Ajuste_AnchoBanda",
#                               label = "Ajuste de ancho de banda:",
#                               min = 0.2, max = 2, value = 1, step = 0.2)
  #)
  #Creo un slider
  #sliderInput(inputId = "slider",
  #            label = "deslizar",
  #            min = 0,
  #            max = 20,
  #            value = 4)
)