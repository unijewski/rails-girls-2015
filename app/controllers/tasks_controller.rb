class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  private

  def task_params
    params.require(:task).permit(:body)
  end
end
