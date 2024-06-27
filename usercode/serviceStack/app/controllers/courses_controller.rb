class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def search
    @courses=Course.where("lower(name) LIKE ?", "%" + params[:q].downcase + "%")
  end
end
