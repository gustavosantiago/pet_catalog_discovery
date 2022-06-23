class Discovery::Api::V1::PetsController < Discovery::Api::V1::ApplicationController
  def index
    @pets = PetRepository.with_photos(index_params)

    render json: PetSerializer.new(@pets).serializable_hash.to_json, status: :ok
  end

  private

  def index_params
    params.permit(:limit)
  end
end
