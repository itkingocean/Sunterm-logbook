class CreateSignins < ActiveRecord::Migration[5.2]
  def change
    create_table :signins do |t|
      t.string :name
      t.string :company
      t.string :purpose

      t.timestamps
    end
  end
end
