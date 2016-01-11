class AddImageFile2ToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_file2, :string
  end
end
