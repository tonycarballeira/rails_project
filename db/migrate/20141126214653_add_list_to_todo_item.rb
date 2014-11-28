class AddListToTodoItem < ActiveRecord::Migration
  def change
    add_reference :todo_items, :list, index: true   #you ran rails g migration AddListToTodoItme list:references
  end
end
