# Proyecto: Aprendiendo R con RStudio
# Objetivo: Análisis visual del dataset Iris


# Cargar librerías
library(tidyverse)

# Cargar datos
data(iris)

# Generar gráfico de dispersión
grafico_flores <- ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 3) +
  theme_minimal() +
  labs(title = "Mi primer gráfico en R",
       subtitle = "Relación entre largo y ancho del sépalo",
       x = "Largo del Sépalo",
       y = "Ancho del Sépalo")

# Mostrar el gráfico
print(grafico_flores)

ggsave("primer_grafico_iris.png", plot = grafico_flores, width = 8, height = 6)