class HomeController < ApplicationController
  def top
    @task = "勉強をする"
    @tasks = Task.all
  end

end
