class CuisinesController < ApplicationController
    def index
        cuisines = Cuisine.all
        render json: cuisines
    end

    def show
        cuisine = Cuisine.find_by(id: params[:id])
        if cuisine
            render json: cuisine, except: [:created_at, :updated_at]
        else
            render json: {message: 'cuisine not found'}
        end
    end
end
