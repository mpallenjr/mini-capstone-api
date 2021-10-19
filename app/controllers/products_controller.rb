class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products.as_json
  end

  def show
    the_id = params[:id]
    show_product = Product.find_by(id: the_id)
    render json: show_product.as_json
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

  def update
    the_id = params[:id]
    update_product = Product.find_by(id: the_id)
    update_product.name = params[:name]
    update_product.price = params[:price]
    update_product.img_url = params[:url]
    update_product.description = params[:description]
    update_product.save
    render json: update_product.as_json
  end
end
