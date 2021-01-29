class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
   @work = Work.new(work_params)
   if @work.save
     redirect_to works_path
   else
     render 'new'
   end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to work_path
    else
      render 'edit'
    end
  end

end
