class AddImageFileTwoToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_file_two, :string
  end
end
