class Api::V1::WordsController < ActionController::API
  def index
    @words = Word.all
    render json: @words.to_json
  end
end
