class CreateJoinTableSpecialtyDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_specialty_doctors do |t|
      t.references :specialty, foreign_key: true
      t.references :doctor, foreign_key: true
      t.timestamps
    end
  end
end
