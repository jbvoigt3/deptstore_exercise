class DeptsController < ApplicationController

  def index
    @depts = Dept.all.order("dname ASC")
  end
end
