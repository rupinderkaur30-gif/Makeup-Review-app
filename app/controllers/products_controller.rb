class ProductsController < ApplicationController
    before_action :set_products, only: [:show, :edit, :update, :destroy]
    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def create
        product = Product.create(product_params)
        redirect_to product
    end

    def show 
      
    end

    def edit
       
    end

    def update
        @product.update(product_params)
        redirect_to @product
    end

    private

    def product_params
        params.require(:product).permit(:name, :price, :details, :description, :category, :image)
    end

    def set_products
        @product = Product.find(params[:id])
    end
end
