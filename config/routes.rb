BookFlow::Application.routes.draw do
  resource 'users'

  root :to => 'users#create'
end
