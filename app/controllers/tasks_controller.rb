class TasksController < ApplicationController
  def index
    @tasks = ['Foo', 'Bar', 'FooBar']
  end
end
