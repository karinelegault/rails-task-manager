Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action'
  get '/tasks', to: 'tasks#index'
  # new task
  get '/tasks/new', to: 'tasks#new', as: "new" # display the form
  # read all task
  get '/tasks/:id', to: 'tasks#show', as: "show"
  # create a task
  post '/tasks/', to: 'tasks#create'
  # update a task
  get '/tasks/:id/edit', to: 'tasks#edit'

  patch '/tasks/:id', to: 'tasks#update'
  # delete a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
