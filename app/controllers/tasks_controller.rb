class TasksController < ApplicationController
# before_action :set_task, only: [:create, :index, :show, :edit, :update, :destroy] #pour éviter de répéter "find param"
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.new(param[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
      end

  def update
    @task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end


# private

# def set_task
#   @task = Task.find(params[:id])
# end

# def task_params
#   params.require(:task).permit(:index, :descripion, :done)
# end
# end
