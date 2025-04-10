class SourcesController < ApplicationController
    before_action :set_source, only: [:destroy]
  
    def index
      @sources = Source.all
    end
  
    def new
      @source = Source.new
    end
  
    def create
      @source = Source.new(source_params)
      if @source.save
        redirect_to sources_path, notice: "Source added successfully!"
      else
        render :new, alert: "Failed to add source."
      end
    end
  
    def destroy
      @source.destroy
      redirect_to sources_path, notice: "Source deleted."
    end
  
    private
  
    def source_params
      params.require(:source).permit(:name, :url)
    end
  
    def set_source
      @source = Source.find(params[:id])
    end
  end
  