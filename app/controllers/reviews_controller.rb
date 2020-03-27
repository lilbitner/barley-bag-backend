class ReviewsController < ApplicationController
    
    def index 
        @reviews = Review.all 

        render json: @reviews
    end 
    
    def create 
        Review.create(
            description: params[:description],
            title: params[:title]
        )

        render json: "Submitted"
    end 
end
