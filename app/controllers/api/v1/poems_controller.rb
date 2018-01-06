class Api::V1::PoemsController < ActionController::API
  def index
    @poems = Poem.all
    render json: @poems.to_json(:include => [:words, :favorited_by])
  end
end
