Rails.application.routes.draw do
  get("/", {:controller => "home", :action => "home"})
  get "/dice/:num_dice/:sides", { controller: "roll", action: "roll" }
end
