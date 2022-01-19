class EpisodesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index 
        render json: Episode.all, status: :ok
    end

    def show 
        render json: find_episode, status: :ok, serializer: EpisodeGuestsSerializer
    end
    
    def destroy
        episode = find_episode
        episode.destroy
        head :no_content
    end
    
    private

    def find_episode 
        Episode.find(params[:id])
    end

    def record_not_found
        render json: {"error": "Episode not found"}, status: :not_found
    end

end
