class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(people_params)

    if @person.save
      redirect to people_path
    else
      render :new
    end

  end




  private

    def people_params
      params.require(:page).permit(:name, :age, :gender, :hair_color, :eye_color, :alive)
    end


end
