class ProspectController < ApplicationController
  before_action :authenticate_user!
  def index
    @prospects = Prospect.all
  end

  def show
    @prospect = Prospect.find(params[:id])
  end

  def create
    @prospect = Prospect.new(fname: 'Nombre', lname: 'Apellido', tel: 'Telefono', email: 'Email', status: '...')

    if @prospect.save
      redirect_to @prospect
    else
      render :new
    end
  end
end
