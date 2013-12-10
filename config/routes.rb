UReview2::Application.routes.draw do
  resources :games
  root :to => redirect('/games')
end
