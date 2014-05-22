class TasksController < ApplicationController
  #before_action :set_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  before_action :correct_user, only: [:destroy, :edit, :update, :gotowe]


  # GET /tasks
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create

    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to tasks_url, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to tasks_url, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Task was successfully destroyed.'
  end

  def gotowe
    @task = current_user.tasks.find(params[:id])
    @task.update_attribute(:completed, Time.now)
    redirect_to root_url
    flash[:success] = "Zadanie zostało wykonane"
  end


  def ukonczone
    @tasks = Task.ukonczone
  end

  def nieukonczone
    @tasks = Task.nieukonczone
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:name, :description, :link)
    end

    def correct_user
      @task = current_user.tasks.find_by(id: params[:id])
      redirect_to root_url if @task.nil?
    end
end
