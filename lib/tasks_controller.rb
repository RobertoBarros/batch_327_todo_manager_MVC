require_relative 'tasks_view'
require_relative 'task'

class TasksController
  def initialize(repository)
    @view = TasksView.new
    @repository = repository
  end

  def create
    # Ask task description
    description = @view.ask_user_for_description
    # Instantiate a new task
    task = Task.new(description)
    # Add task in repository
    @repository.add(task)
  end

  def list
    #Show tasks
    display_tasks
  end

  def mark_as_done
    #Show tasks
    display_tasks
    # Ask user task index
    index = @view.ask_user_for_index
    # Find task by index
    task = @repository.find(index)
    # mark as done!
    task.mark_as_done!
  end

  def destroy
    #Show Tasks
    display_tasks
    # Ask user task index
    index = @view.ask_user_for_index
    # remove from repository by index
    @repository.remove(index)
  end

  private

  def display_tasks
    # Get all tasks
    tasks = @repository.all
    # Send to view
    @view.display(tasks)
  end


end