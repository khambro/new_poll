class AddResponse3ColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :response3, :string
  end
end
