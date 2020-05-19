Rails.application.routes.draw do


  


  # =============================

  get("/",  { :controller => "vision", :action => "homepage" })

  get("/vision/:detector", { :controller => "vision", :action => "form" })
  post("/vision/:detector", { :controller => "vision", :action => "magic" })

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
