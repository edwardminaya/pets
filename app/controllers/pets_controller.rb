class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
    render :new
  end

  def create
    @pet = Pet.create(
      name: params[:pet][:name],
      breed: params[:pet][:breed],
    )
    redirect_to "/pets"
  end

  def edit
    @pet = Pet.find(params[:id])
    render :edit
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(
      name: params[:pet][:name],
      breed: params[:pet][:breed],
      image: params[:pet][:image],
    )
    redirect_to "/pets"
  end
end
