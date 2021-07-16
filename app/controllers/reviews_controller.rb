class ReviewsController < ApplicationController
    before_action :set_review, only: [:edit, :update, :destroy]

    def create
        @review = Review.new(review_params)
        @review.user = current_user
        if @review.save
            redirect_to @review.product
        else
            @product = @review.product
            render "products/show"
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


    def set_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:content, :product_id)
    end
end
