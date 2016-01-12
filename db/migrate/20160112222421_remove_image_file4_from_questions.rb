class RemoveImageFile4FromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :image_file4, :string
  end
end
