class CreateProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.string :etapa
      t.text :descripcion
      t.string :proposito
      t.string :web
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
