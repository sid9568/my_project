class CreateMobiles < ActiveRecord::Migration[7.0]
  def change
    create_table :mobiles do |t|
      t.string :logo
      t.string :image
      t.string :processor
      t.string :camera
      t.string :display
      t.string :bettry_life

      t.timestamps
    end
  end
end
