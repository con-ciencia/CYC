class CreateEmpresas < ActiveRecord::Migration[5.1]
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :tamaño
      t.string :tipo
      t.string :rubro
      t.string :web
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
