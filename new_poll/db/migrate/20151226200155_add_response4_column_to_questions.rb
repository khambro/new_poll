class AddResponse4ColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :response4, :string
  end
end
