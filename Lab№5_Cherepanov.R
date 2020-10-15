# Лабораторная работа №5
# Написание классов


j <- list(
  manufacturer = "Japan",
  wheels = 4,
  colour = "Red",
  seats = 3 
)

class(j) <- "Auto"

print.Auto <- function(wk){
  cat("Производитель:", j$manufacturer, "\n")
  cat("Количество колес:", j$wheels, "\n")
  cat("Цвет", j$colour, "\n")
  cat("Пассажирских сидений:", j$seats, "\n")
  cat("Название:", wk$name, "\n")
  cat("Тип топлива:", wk$fuel)
}


a <- list(
  name = "Ford",
  fuel = "бензиновый"
)
class(a) <- c("NewAuto1", "Auto")

b <- list(
  name = "Fiat",
  fuel = "дизельный"
)
class(b) <- c("NewAuto2", "Auto")

m <- list(
  name = "Tesla",
  fuel = "Электрический"
)
class(m) <- c("NewAuto3", "Auto")


infa <- function(){
  v <- readline("Информпацию о какой машине вы хотите узнать (Ford, Fiat, Tesla)?: ")
  if(v == "Ford") print.Auto(a)
  if(v == "Fiat") print.Auto(b)
  if(v == "Tesla") print.Auto(m)
}
infa()

