class AddImageToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :image_file, :string
  end
end
