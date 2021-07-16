class BrandsController < ApplicationController
    before_action :set_brand, only: [:show, :edit, :update, :destroy]
    def index
        @brands = Brand.order_by_name
    end

    def new
        @brand = Brand.new
        @brand.products.build
    end

    def create
        @brand = Brand.new(brand_params)
        if @brand.save
            redirect_to @brand
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
       if @brand.update(brand_params)
        redirect_to @brand
       else
        render :edit
       end
    end

    def destroy
        @brand.destroy
        redirect_to brands_path
    end



    private

    def set_brand
        @brand = Brand.find(params[:id])
    end

    def brand_params
        params.require(:brand).permit(:name, :image, products_attributes: [:name, :price, :details, :description, :category, :image])
    end
end
