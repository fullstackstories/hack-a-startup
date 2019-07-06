class CreateCultivos < ActiveRecord::Migration[5.2]
  def change
    create_table :cultivos do |t|
      t.string :nombre
      t.string :necesidad
      t.belongs_to :tipo_cultivo, foreign_key: true
      t.belongs_to :tipo_suelo, foreign_key: true

      t.timestamps
    end
  end
end
