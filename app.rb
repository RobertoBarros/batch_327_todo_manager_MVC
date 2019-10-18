require_relative 'lib/task_repository'
require_relative 'lib/tasks_controller'
require_relative 'router'

repository = TaskRepository.new
controller = TasksController.new(repository)

router = Router.new(controller)
router.run
