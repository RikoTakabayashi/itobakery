class PansController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]

    def top

    end

    def index
        @pans = Pan.all
        
    end

    def ranking
        if params[:star_count]
            @pans = Pan.star_count
        else
            @pans = Pan.all
        end
    end

    def about

    end

    def new
        @pan = Pan.new
    end
    
    def create
    pan = Pan.new(pan_params)
    if pan.save!
        redirect_to :action => "index"
    else
        redirect_to :action => "new"
    end
    end

    def show
    @pan = Pan.find(params[:id])
    @comments = @pan.comments
    @comment = Comment.new
    end

    def edit
    @pan = Pan.find(params[:id])
    end

    def update
    pan = Pan.find(params[:id])
    if pan.update(pan_params)
        redirect_to :action => "show", :id => pan.id
    else
        redirect_to :action => "new"
    end
    end

    def destroy
    pan = Pan.find(params[:id])
    pan.destroy
    redirect_to action: :index
    end

    private
    def pan_params
    params.require(:pan).permit(:name, :kinds, :about, :price, :image, :overall)
    end
end
