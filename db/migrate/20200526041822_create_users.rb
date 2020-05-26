class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.date :birth_date
      t.integer :review_count

      t.timestamps
    end
  end
end
