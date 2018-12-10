class ContactosController < ApplicationController
  def index
    @contactos = Contacto.all
  end

  def show
      @contacto = Contacto.find(params[:id])
  end

  def new
    @contacto = Contacto.new
  end

  def edit
  @contacto = Contacto.find(params[:id])
  end

  def create
    @contacto = Contacto.new(contacto_params)
    if @contacto.save
      redirect_to @contacto
    else
      render 'new'
    end
  end

  def update
  @contacto = Contacto.find(params[:id])

  if @contacto.update(contacto_params)
    redirect_to @contacto
  else
    render 'edit'
  end
  end

  def destroy
  @contacto = Contacto.find(params[:id])
  @contacto.destroy

  redirect_to contactos_path
  end
  private
  def contacto_params
    params.require(:contacto).permit(:title, :text)
  end
end
