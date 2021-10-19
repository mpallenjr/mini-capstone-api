class ProductsController < ApplicationController
  def index
    all_products = Product.all
    render json: all_products
  end

  def show
    the_id = params[:id]
    show_product = Product.find_by(id: the_id)
    render json: show_product
  end

  def create
    create_product = Product.new(
  
      name: params[:name], 
      price: params[:price], 
      img_url: params[:url], 
      description: params[:description]
    
    )
    create_product.save
    render json: create_product
  end

  def update
    the_id = params[:id]
    update_product = Product.find_by(id: the_id)
    update_product.name = params[:name]
    update_product.price = params[:price]
    update_product.img_url = params[:url]
    update_product.description = params[:description]
    update_product.save
    render json: update_product
  end

  def delete
    the_id = params[:id]
    delete_product = Product.find_by(id: the_id)
    delete_product.destroy
    render json: {message: "The item was successfully deleted"}
  end
end
