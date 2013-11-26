class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.string :assunto
      t.text :comentario

      t.timestamps
    end
  end
end
