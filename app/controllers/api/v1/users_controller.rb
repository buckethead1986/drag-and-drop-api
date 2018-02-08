class Api::V1::UsersController < ActionController::API
  def index
    @users = User.all
    render json: @users.to_json(:include => [:poems, {:favorited_poems => {:include => :poem}}, :followers, :following])
  end

  def create
    @user = User.create(username: params[:username], password: params[:password])
    render json: @user.to_json
  end


end
