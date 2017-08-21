Rails.application.routes.draw do
  # Routes for the Receiver resource:
  # CREATE
  get "/receivers/new", :controller => "receivers", :action => "new"
  post "/create_receiver", :controller => "receivers", :action => "create"

  # READ
  get "/receivers", :controller => "receivers", :action => "index"
  get "/receivers/:id", :controller => "receivers", :action => "show"

  # UPDATE
  get "/receivers/:id/edit", :controller => "receivers", :action => "edit"
  post "/update_receiver/:id", :controller => "receivers", :action => "update"

  # DELETE
  get "/delete_receiver/:id", :controller => "receivers", :action => "destroy"
  #------------------------------

  # Routes for the Entertainment resource:
  # CREATE
  get "/entertainments/new", :controller => "entertainments", :action => "new"
  post "/create_entertainment", :controller => "entertainments", :action => "create"

  # READ
  get "/entertainments", :controller => "entertainments", :action => "index"
  get "/entertainments/:id", :controller => "entertainments", :action => "show"

  # UPDATE
  get "/entertainments/:id/edit", :controller => "entertainments", :action => "edit"
  post "/update_entertainment/:id", :controller => "entertainments", :action => "update"

  # DELETE
  get "/delete_entertainment/:id", :controller => "entertainments", :action => "destroy"
  #------------------------------

  # Routes for the Recommend resource:
  # CREATE
  get "/recommends/new", :controller => "recommends", :action => "new"
  post "/create_recommend", :controller => "recommends", :action => "create"

  # READ
  get "/recommends", :controller => "recommends", :action => "index"
  get "/recommends/:id", :controller => "recommends", :action => "show"

  # UPDATE
  get "/recommends/:id/edit", :controller => "recommends", :action => "edit"
  post "/update_recommend/:id", :controller => "recommends", :action => "update"

  # DELETE
  get "/delete_recommend/:id", :controller => "recommends", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
