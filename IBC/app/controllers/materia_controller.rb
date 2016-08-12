class MateriaController < ApplicationController
before_action :require_user, only: [:index, :show]
 
  def index
    @materia = Materium.all
  end

  def new
    @materia = Materium.new
  end

  def create
    @materia = Materium.new(materia_params)
    if @materia.save
      redirect_to '/materia'
    else
      render :new
    end
  end

  def show
    @materia = Materium.find(params[:id])
  end

  def destroy
    @materia = Materium.find(params[:id])
    @materia.destroy
    redirect_to '/materia'
  end

  def edit
    @materia = Materium.find(params[:id])
  end

  def update
    @materia = Materium.find(params[:id])
    if @materia.update(materia_params)
      redirect_to '/materia'
    else
      render 'edit'
    end
  end

  private
    def materia_params
      params.require(:materium).permit(:nombre_materia)
    end
    
end
