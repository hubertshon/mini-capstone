Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

namespace :api do
  get "/minicapstone_url" => "products#store_page"
  get "/product_url" => "products#product"
  get "noncoffee_products_url" => "products#noncoffee"
end


end
