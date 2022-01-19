class AppearancesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_record

    def create 
        appearance = Appearance.create!(appearance_params)
        render json: appearance, status: :created
    end

    private

    def appearance_params
        params.permit(:rating, :episode_id, :guest_id)
    end

    def render_invalid_record(exception)
        render json: { errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

end





