class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.belongs_to :company, index: true, optional: true, foreign_key: { to_table: :companies }
      t.string :name

      t.timestamps
    end
  end
end
