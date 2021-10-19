class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products.as_json
  end

  def show
    the_id = params[:id]
    product_by_id = Product.find_by(id: the_id)
    render json: product_by_id.as_json
  end

  def create
    new_product = Product.new(
  
      name: params[:name], 
      price: params[:price], 
      img_url: params[:url], 
      description: params[:description]
    
    )
    new_product.save
    render json: new_product.as_json
  end
end
