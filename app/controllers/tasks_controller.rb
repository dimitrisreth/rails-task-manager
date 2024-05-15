class TasksController < ApplicationController
 def index
  @tasks = Task.all
 end

 def show
  @task = Task.find(params[:id])
 end

 def create
  @task = Task,bew(params[:task])
  @task.save
  redirect_to task_path(@task)
 end

 private

 def task_params
  params.require(:task).permit(:title, :details)
 end
end
