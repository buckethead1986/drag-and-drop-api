class Api::V1::UsersController < ActionController::API
  def index
    @users = User.all
    render json: @users.to_json(:include => [:poems, {:favorited_poems => {:include => :poem}}, :followers, :following])
  end

  def create
    @user = User.create(username: params[:username], password: params[:password], image: params[:image])
    render json: @user.to_json
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.image = user_params[:image]
    @user.save
    render json: @user.to_json
  end

  private

  def user_params
    params.require(:user).permit(:image)
  end

end
