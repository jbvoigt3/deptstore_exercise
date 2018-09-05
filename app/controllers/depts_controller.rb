class DeptsController < ApplicationController
  before_action :find_dept, only: [:show, :edit, :update, :destroy]

  def index
    @depts = Dept.all.order("name ASC")
  end

  def show
  end

  def new
    @dept = Dept.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @dept = Dept.new(dept_params)

    if @dept.save
      redirect_to depts_path
    else
      render :new
    end
  end

  def update
    if @dept.update(dept_params)
      redirect_to dept_path(@dept)
    else
      render :edit
    end  
  end

  def destroy
    @dept.destroy
    redirect_to dept_path
  end

  private
  def dept_params
    params.require(:dept).permit(:name, :loc)
  end

  def find_dept
    @dept = Dept.find(params[:id])
  end


end
