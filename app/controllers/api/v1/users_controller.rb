class Api::V1::UsersController < ActionController::API
  def index
    @users = User.all
    render json: @users.to_json(:include => [:poems, :followers])
  end
end
