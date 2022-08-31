# frozen_string_litetal: true

module Discovery
  module Api
    module V1
      class PetsController < Discovery::Api::V1::ApplicationController
        before_action :set_pet, only: %i(show edit)

        def index
          @pets = PetRepository.with_photos(index_params)

          render json: PetSerializer.new(@pets).serializable_hash.to_json, status: :ok
        end

        def show
          render_show_or_edit
        end

        def edit
          render_show_or_edit
        end

        def adopted
          @pets = PetRepository.adopted(index_params)

          render json: PetSerializer.new(@pets).serializable_hash.to_json, status: :ok
        end

        private

        def render_show_or_edit
          render json: PetSerializer.new(@pet).serializable_hash.to_json, status: :ok
        end

        def index_params
          params.permit(:limit)
        end

        def set_pet
          @pet = PetRepository.find_by(id: params[:id])

          render_not_found if @pet.nil?
        end
      end
    end
  end
end
