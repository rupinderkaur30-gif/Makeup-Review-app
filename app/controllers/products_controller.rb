class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    def index
        if params[:brand_id]
          brand = Brand.find(params[:brand_id])
          @products = brand.products.order_by_price
        else
         @products = Product.order_by_price
        end
        if params[:search]
            @products = @products.search_by_name(params[:search])
        end
    end

    def new

        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
         redirect_to @product
        else
            render :new
        end
    end

    def show 
        @review = Review.new(user: current_user, product: @product)

    end

    def edit
       
    end

    def update
        if @product.update(product_params)
        redirect_to @product
        else 
            render :edit
        end
    end

    def destroy
        @product.destroy
        redirect_to products_path
      end

    private

    def product_params
        params.require(:product).permit(:name, :price, :details, :description, :category, :image, :brand_id)
    end

    def set_product
        if params[:brand_id]
            @brand = Brand.find(params[:brand_id])
            @product = @brand.products.find(params[:id])
        else
            @product = Product.find(params[:id])
        end
    end
end
