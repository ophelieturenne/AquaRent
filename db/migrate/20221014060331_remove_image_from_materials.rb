class RemoveImageFromMaterials < ActiveRecord::Migration[7.0]
  def change
    remove_column :materials, :image, :string
  end
end
