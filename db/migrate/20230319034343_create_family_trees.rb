class CreateFamilyTrees < ActiveRecord::Migration[7.0]
  def change
    create_table :family_trees do |t|
      t.integer :user_id
      t.string :name
      t.string :relationship
      t.string :image_url

      t.timestamps
    end
  end
end
