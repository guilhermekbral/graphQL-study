class CreateCardLabels < ActiveRecord::Migration[5.1]
  def change
    create_table :card_labels do |t|
      t.string :name
      t.references :card

      t.timestamps
    end
  end
end
