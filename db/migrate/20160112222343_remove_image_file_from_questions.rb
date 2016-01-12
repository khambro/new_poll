class RemoveImageFileFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :image_file, :string
  end
end
