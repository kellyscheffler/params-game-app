Rails.application.routes.draw do

  get '/name' => 'pages#name'
  get '/guess' => 'pages#guess'
  get '/guess_game/:guess' => 'pages#guess_game'
  get '/guess_number' => 'pages#form'
  post '/guess_answer' => 'pages#answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
