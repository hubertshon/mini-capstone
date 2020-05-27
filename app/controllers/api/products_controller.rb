class Api::ProductsController < ApplicationController

def store_page
  @products = Product.all
  render "store.json.jb"
end

def product
  @product = Product.first
  render "products.json.jb"
end

def noncoffee
  @product = Product.find_by(id:9)
  render "noncoffee.json.jb"
end


end
