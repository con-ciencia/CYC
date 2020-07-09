class CreateSubsidios < ActiveRecord::Migration[5.1]
  def change
    create_table :subsidios do |t|
      t.string :nombre
      t.string :institucion
      t.text :descripcion
      t.string :modalidad
      t.datetime :inicio
      t.datetime :cierre
      t.integer :monto
      t.text :perfil
      t.string :bases

      t.timestamps
    end
  end
end
