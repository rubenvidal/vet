class ProblemasController < ApplicationController
  def index
    @problemas = Problema.all
  end

  def show
    @problema = Problema.find(params[:id])
  end

  def new
    @problema = Problema.new
  end

  def create
    @problema = Problema.new(params[:problema])
    if @problema.save
      redirect_to @problema, :notice => "Successfully created problema."
    else
      render :action => 'new'
    end
  end

  def edit
    @problema = Problema.find(params[:id])
  end

  def update
    @problema = Problema.find(params[:id])
    if @problema.update_attributes(params[:problema])
      redirect_to @problema, :notice  => "Successfully updated problema."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @problema = Problema.find(params[:id])
    @problema.destroy
    redirect_to problemas_url, :notice => "Successfully destroyed problema."
  end
end
