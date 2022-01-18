class AppearancesController < ApplicationController

    def create 
        appearance = Appearance.create!(appearance_params)
        render json: appearance, status: :created
    end

    private

    def appearance_params
        params.permit(:rating, :episode_id, :guest_id)
    end

end
