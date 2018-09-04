class DeptsController < ApplicationController
  def index
    @depts = Dept.all.order("name ASC")
  end

  def show
    @depts = Dept.find(params[:id])
  end

  def new
    @depts = Dept.new
  end

  def edit
    @depts = Dept.find(params[:id]) 
  end

  def create
  end

  def update
  end

  def destroy
  end
end
