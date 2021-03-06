class HomesController < ApplicationController

  def index
    @logo = Logo.first
    @text = Text.first

  end

  def edit
    @logo = Logo.find(params[:id])
  end

  def test
    @logo = Logo.first
    @text = Text.first

  end

  def update
    @logo = Logo.find(params[:id])
    if @logo.update(logo_params)
      redirect_to @logo
    else
      render 'edit'
    end
  end

  def show
  end

  private
  def logo_params
    params.require(:logo).permit(:image)
  end
end
