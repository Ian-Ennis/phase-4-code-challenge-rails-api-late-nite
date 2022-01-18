class EpisodesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index 
        episodes = Episode.all 
        render json: episodes
    end

    def show
        episode = find_episode_by_id
        if episode
            render json: episode
        else 
            render json: {error: "Episode not found"}, status: :not_found
        end
    end

    # def destroy
    #     episode = find_episode
    #     episode.destroy
    #     head: :no_content
    # end
    
    private

    def find_episode 
        Episode.find(params[:id])
    end

    def find_episode_by_id
        episode = Episode.find_by(id: params[:id])
    end

    def render_unprocessable_entity_response
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end


end
