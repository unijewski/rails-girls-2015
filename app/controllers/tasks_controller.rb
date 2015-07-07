class TasksController < ApplicationController
  before_action :find_task, only: [:closed, :opened]

  def index
    @tasks = Task.all
  end

  def create
    Task.create(task_params)
    redirect_to(root_path)
  end

  def closed
    @task.update(closed: true)
    redirect_to(root_path)
  end

  def opened
    @task.update(closed: false)
    redirect_to(root_path)
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:body)
  end
end
