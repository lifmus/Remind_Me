RemindMe::Application.routes.draw do
  
  root :to => "reminders#new"
  
  resources :reminders
end
