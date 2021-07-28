class ReviewsController < ApplicationController
    before_action :set_review, only: [:edit, :update, :destroy]
    before_action :set_product, only: [:create]
    before_action :require_login

    def create
        @review = current_user.reviews.build(review_params)
        @review.product = @product
        if @review.save
          redirect_to @product
         else
        render :"products/show"
        end
      
    end

        def edit
        end

        def update
           if @review.update(review_params)
            redirect_to @review.product
           else
            render :edit
           end
        end

        def destroy
            @review.destroy
            redirect_to products_path
        end
   

    private
    

    def set_product
        @product = Product.find(params[:product_id]) if params[:product_id]
      end
    

    def set_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:content)
    end
end
