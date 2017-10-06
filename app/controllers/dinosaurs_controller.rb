class DinosaursController < ApplicationController

      def index
        @dinosaurs = Dinosaur.all
      end

def show
  @dinosaur = Dinosaur.find(params[:id])
end

def new
  @dinosaur = Dinosaur.new
end

def create
  dinosaur_param = params.require(:dinosaur).permit(:name, :age, :image_url)

@dinosaur = Dinosaur.new(dinosaur_param)


  if @dinosaur.save
    redirect_to @dinosaur
  else
    render "new"
  end
end
end
