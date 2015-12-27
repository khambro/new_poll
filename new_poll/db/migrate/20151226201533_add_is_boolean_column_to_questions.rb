class AddIsBooleanColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :is_boolean, :boolean
  end
end
