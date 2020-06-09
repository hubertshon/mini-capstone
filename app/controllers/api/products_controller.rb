class Api::ProductsController < ApplicationController

def index
  @products = Product.all 
  if params[:search]
    @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
  end
  if params[:discount]
    @products = @products.where("price < ?", 9)
  end
  if params[:sort] == "price"
    if params[:sort_order] == "asc" 
      @products = @products.order[:price]
    elsif params[:sort_order] == "dsc" 
      @products = @products.order[price: :desc]
    end
  end
  render "index.json.jb"
end

def show
  @product = Product.find_by(id: params[:id])
  render "show.json.jb"
end

def create
  @product = Product.new(
    name: params[:name],
    price: params[:price],
    description: params[:description],
    in_stock: params[:in_stock]
  )
  #happy path
  if @product.save
    render "index.json.jb"
  #sad path
  else
    render json: {errors: @product.errors}, status: :unprocessable_entity
  end
end

def update
  @product = Product.find(params[:id])
  @product.name = params[:name] || @product.name
  @product.price = params[:price] || @product.price
  @product.description = params[:description] || @product.description
  @product.in_stock = params[:in_stock] || @product.in_stock
#happy path
  if product.save
    render "index.json.jb"
#sad path
  else
    render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
  end
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  render json: "Item Deleted"
end


end
