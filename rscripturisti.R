#---------------------------------INCASSI TURISTICI PAESI DEL MONDO(1995:2020)--------------------------------------------------------------------------


# IN QUESTO DATASET MI SONO CONCENTRATO AD ANALIZZARE LA SOMMA DEGLI INCASSI PER OGNI NAZIONE DALA 1995 AL 2020.
   #note: da notare come l'andamento di ogni nazione cala epoonenzialmente dal 2019 al 2020. Questo è causato dalla forte pandemia (Covid-19) che ha impattato sul mondo in modo drastico.

# Carica il dataset
dato<- read.csv("data/incassi_turistici_modificato.csv")

library(ggplot2)
library(plotly)

# Crea il grafico con ggplot
p <- ggplot(dataset, aes(x = anno, y = valore, group = nome, color = nome)) +
  geom_line() +
  labs(title = "Andamento dei valori nel tempo",
       x = "Anno",
       y = "Valore") +
  theme_light()

# Converti il grafico in una visualizzazione animata con plotly
p_animato <- ggplotly(p) %>%
  animation_opts(frame = 200, transition = 100)

# Visualizza il grafico animato
p_animato





