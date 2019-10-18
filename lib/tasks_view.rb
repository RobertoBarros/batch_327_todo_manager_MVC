class TasksView

  def display(tasks)
    puts '-' * 80
    puts "MY TASKS"
    puts '-' * 80
    tasks.each_with_index do |task, index|
      done = task.done? ? '[X]' : '[ ]'
      puts "#{index + 1} #{done} #{task.description}"
    end
    puts '-' * 80
  end

  def ask_user_for_description
    puts "What do you want to do?"
    gets.chomp
  end

  def ask_user_for_index
    puts "Enter task index"
    gets.chomp.to_i - 1
  end
end