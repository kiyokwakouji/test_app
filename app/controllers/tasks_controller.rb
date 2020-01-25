class TasksController < ApplicationController
protect_from_forgery :except => [:sample]

  def new
  end

  def show
    @task = Task.find_by(id:params[:id])
  end

  def edit
    @task = Task.find_by(id:params[:id])
  end

# モデル名.find_by(<検索したいカラム>:<検索したい値>)
  
  def create
    @task = Task.new(text:params[:text],deadline:params[:deadline],priority:params[:priority])
    @task.save
    redirect_to controller:'home',action:'top'
  end

  def update
   @task = Task.find_by(id:params[:id])
   @task.update(text:params[:text], deadline: params[:deadline], priority:params[:priority])
   redirect_to controller: 'home', action: 'top'
  end

  def delete
   @task = Task.find_by(id:params[:id])
   @task.delete
   redirect_to controller:'home',action:'top'
  end

end

# なお、モデルデータは:idで検索をすることがほとんどなので、:idでの検索に限り
# モデル名.find(params[:id])と省略することができます。

