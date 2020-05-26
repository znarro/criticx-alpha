class CreateInvolvedCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :involved_companies do |t|
      t.references :company, foreign_key: true
      t.references :game, foreign_key: true
      t.boolean :developer
      t.boolean :publisher

      t.timestamps
    end
  end
end
