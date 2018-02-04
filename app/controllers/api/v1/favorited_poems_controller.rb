class Api::V1::FavoritedPoemsController < ActionController::API
  def index
    @favorited_poems = FavoritedPoem.all
    render json: @favorited_poems.to_json
  end

  def new

  end

  def show
    @favorited_poem = FavoritedPoem.find_by(id: params[:id])
    render json: @favorited_poem.to_json
  end

  def create
    @favorited_poem = FavoritedPoem.create(favorited_poems_params)
    render json: @favorited_poem.to_json
  end

  def destroy
    FavoritedPoem.find_by(id: params[:id]).destroy
  end

  private

  def favorited_poems_params
    params.require(:favorited_poem).permit(:user_id, :poem_id)
  end
end
