class RemoveImageFile3FromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :image_file3, :string
  end
end
