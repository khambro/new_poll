class AddImage3ToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :image_file3, :string
  end
end
