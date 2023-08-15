class BirdsController < ApplicationController
    def index 
        birds = Bird.all 
        render json: birds, status: :ok
    end

    def show 
        bird = Bird.find(params[:id])
        rendre json: bird 
    rescue ActiveRecord::RecordNotFound 
        rendr json: "Bird not found", status: :not_found
    end 
end
