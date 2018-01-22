class Api::V1::PoemsController < ActionController::API
  def index
    @poems = Poem.all
    render json: @poems.to_json(:include => [:words, :favorited_by])
  end

  def new

  end

  def show
    @poem = Poem.find_by(id: params[:id])
    render json: @poem.to_json
  end

  def create
    @poem = Poem.create(content: params[:content], user_id: params[:user_id])
    render json: @poem.to_json
  end



  private

  def poem_params
    params.require(:poem).permit(:user_id, :content)
  end
end
