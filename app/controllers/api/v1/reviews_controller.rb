class Api::V1::ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews, except: [:created_at, :updated_at]
    end

    def show
        review = Review.find_by(id: params[:id])
        if review
            render json: review, except: [:created_at, :updated_at]
        else
            render json: {message: 'review not found'}
        end
    end
end
