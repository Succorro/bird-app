class BirdsController < ApplicationController
    def index 
        birds = Bird.all 
        render json: birds, status: :ok
    end
end
