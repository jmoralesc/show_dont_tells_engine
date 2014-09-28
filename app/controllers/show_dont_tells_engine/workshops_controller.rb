require_dependency "show_dont_tells_engine/application_controller"

module ShowDontTellsEngine
  class ShowDontTellsController < ApplicationController
    before_action :find_show_dont_tell, only: [:show, :edit, :update, :destroy]

    def index
      @show_dont_tells = ShowDontTell.all
    end

    def show
    end

    def new
      @show_dont_tell = ShowDontTell.new
    end

    def edit
    end

    def create
      @show_dont_tell = ShowDontTell.new(show_dont_tell_params)
      if @show_dont_tell.save
        redirect_to show_dont_tells_url, notice: 'Show dont tell was successfully created.'
   else
        render :new
      end
    end

    def update
      if @show_dont_tell.update(show_dont_tell_params)
        redirect_to show_dont_tells_url, notice: 'Show dont tell was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @show_dont_tell.destroy
      redirect_to show_dont_tells_url, notice: 'Show dont tell was successfully destroyed.'
    end
    
    private

    def find_show_dont_tell
      @show_dont_tell = ShowDontTell.find(params[:id])
    end
    
    def show_dont_tell_params
      params.require(:show_dont_tell).permit(:title)
    end
  end
end
