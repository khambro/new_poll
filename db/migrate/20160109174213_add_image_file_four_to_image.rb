class AddImageFileFourToImage < ActiveRecord::Migration
  def change
    add_column :images, :image_file_four, :string
  end
end
