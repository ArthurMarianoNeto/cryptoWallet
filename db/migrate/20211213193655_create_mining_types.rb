class CreateMiningTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :mining_types do |t|
      t.string :description
      t.string :acronym

      t.timestamps
    end
  end
end
