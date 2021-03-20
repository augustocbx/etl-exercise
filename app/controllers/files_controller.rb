class FilesController < ApplicationController
  def new
  end
  def index
    @units = Unit.all
  end

  def upload
    result = FileProcessing.call(params[:file], params[:file_format], [:name, :description, :area, :vom, :id], Unit)
    if result.success?
      flash[:notice] = result.message
      redirect_to action: :index
    else
      flash[:error] = result.message
      redirect_to action: :new
    end
  end
end
