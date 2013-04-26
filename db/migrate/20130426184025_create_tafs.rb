class CreateTafs < ActiveRecord::Migration
  def change
    create_table :tafs do |t|
      t.integer :te_id
      t.integer :tc_id
      t.integer :top_id
      t.integer :tts_id
      t.datetime :ta01_horario_inicio_consulta
      t.datetime :ta02_horario_fim_consulta

      t.timestamps
    end
  end
end
