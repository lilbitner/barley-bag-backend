class BagsController < ApplicationController

    def index 
        @bags = Bag.all 

        render json: @bags 
    end 

    def create 
        Bag.create(
            fabric: params[:fabric],
            size: params[:size], 
            favor: params[:favor], 
            title: params[:title],
            email: params[:email]
        )

        render json: "Created"
    end 
end
