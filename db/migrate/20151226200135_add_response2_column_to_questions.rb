class AddResponse2ColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :response2, :string
  end
end
