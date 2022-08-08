library(tidyverse)
library(ggplot2movies)
movie_data <- movies

head(movie_data)

z <- movie_data |> 
  filter(between(year, 1960, 2000),
         between(rating, 5, 6),
         Action == 0,
         Animation == 0,
         Comedy == 0,
         Drama == 0,
         Documentary == 0,
         Romance == 0,
         Short == 0) |> 
  select(title)


movie_filter <- function(Year = 1960, 
                         Rating = 5, 
                         action = FALSE, 
                         animation = FALSE, 
                         comedy = FALSE, 
                         drama = FALSE, 
                         documentary = FALSE, 
                         romance = FALSE, 
                         short = FALSE){
  movie_data |> 
    filter(year == Year,
           rating == Rating,
           Action == action,
           Animation == animation,
           Comedy == comedy,
           Drama == drama,
           Documentary == documentary,
           Romance == romance,
           Short == short) |> 
    select(title)
}
