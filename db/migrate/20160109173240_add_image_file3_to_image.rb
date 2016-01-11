class AddImageFile3ToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_file3, :string
  end
end
