function(input, output) {
  
  output$grafica_principal<- renderPlot({
    
    #plot(iris$Petal.Length,iris$Petal.Width,
    hist(iris$Petal.Length, 
        #probability = TRUE,
         #breaks = as.numeric(input$separaciones),
         xlab = "Longitud de los petalos",
         ylab= "Frecuencia",
         #lines(iris$Petal.Width),
         main = " Distribución del largo de petalos de Iris",col = "slateblue")
         
    if (input$osbervaciones_individuales) {
      largo_mayor_media <-iris[iris$Petal.Length>mean(iris$Petal.Length),]
      plot(largo_mayor_media$Species,xlab="Especies", ylab ="Longitud del Petalo", main = "Especies con un largo mayor a la media", col="red") 
      
      }
    
    if (input$densidad) {
      plot(iris$Petal.Length,iris$Petal.Width,main = "Correlacion entre el largo y el ancho de los petalos de Iris",col="orangered4",
           xlab="Largo de los Petalos", ylab = "Ancho de los petalos", lines(iris$Petal.Width))
      #dens <- density(airquality$Temp,
      #                adjust = input$Ajuste_AnchoBanda)
      #lines(dens, col = "blue")
    }
    #if (input$slider){
    #  abline(v = input$slider, col= "red")
    #}
  })
}