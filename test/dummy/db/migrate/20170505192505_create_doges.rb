class CreateDoges < ActiveRecord::Migration[5.1]
  def change
    create_table :doges do |t|
      t.string :name

      t.timestamps
    end
  end
end
