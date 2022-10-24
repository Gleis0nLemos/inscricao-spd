class SubscriptsController < ApplicationController
  def index 
    @subscripts = Subscript.all
  end
  
  def new
    @subscript = Subscript.new
  end
  
  def create
    @subscript = Subscript.new(subscript_params)
    unless @subscript.save
      redirect_to new_subscript_path
    end
  end

  private
  def subscript_params
    params.require(:subscript).permit(:name, :email, :phone, :description, :language, :schooling)
  end
end
