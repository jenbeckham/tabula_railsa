class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.boolean :chocolate
      t.boolean :rainbows
      t.boolean :puppies
      t.boolean :cold_hard_cash

      t.timestamps null: false
    end
  end
end
