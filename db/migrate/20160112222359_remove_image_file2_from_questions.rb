class RemoveImageFile2FromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :image_file2, :string
  end
end
