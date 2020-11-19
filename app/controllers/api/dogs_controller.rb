class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render 'index.json.jb'
  end

  def create
    if current_user
      @dog = Dog.new(
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
        user_id: current_user.id
      )
    
      @dog.save
      render json: { message: "Dog created Successfully" }, status: :created
    else
      render json: { error: "You need a cookie!"}, status: :bad_request
    end
  end
end
