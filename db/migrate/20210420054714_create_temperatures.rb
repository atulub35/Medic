class CreateTemperatures < ActiveRecord::Migration[6.1]
  def change
    create_table :temperatures do |t|
      t.string :title
      t.references :procedure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
