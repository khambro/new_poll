class AddImage4ToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :image_file4, :string
  end
end
