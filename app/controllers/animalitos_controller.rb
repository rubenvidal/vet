class AnimalitosController < ApplicationController
  def index
    @animalitos = Animalito.all
  end

  def show
    @animalito = Animalito.find(params[:id])
  end

  def new
    @animalito = Animalito.new
  end

  def create
    @animalito = Animalito.new(params[:animalito])
    if @animalito.save
      redirect_to @animalito, :notice => "Successfully created animalito."
    else
      render :action => 'new'
    end
  end

  def edit
    @animalito = Animalito.find(params[:id])
  end

  def update
    @animalito = Animalito.find(params[:id])
    if @animalito.update_attributes(params[:animalito])
      redirect_to @animalito, :notice  => "Successfully updated animalito."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @animalito = Animalito.find(params[:id])
    @animalito.destroy
    redirect_to animalitos_url, :notice => "Successfully destroyed animalito."
  end
end
