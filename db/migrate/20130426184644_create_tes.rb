class CreateTes < ActiveRecord::Migration
  def change
    create_table :tes do |t|
      t.integer :tprof_profissional_id
      t.integer :tprof_responsavel_id
      t.integer :tta_id
      t.integer :top_id
      t.integer :ttac_id
      t.integer :te01_num_seq
      t.date :te03_data_execucao
      t.datetime :te04_horario_inicio_execucao
      t.datetime :te05_horario_fim_execucao
      t.string :te06_observacoes
      t.integer :te07_num_atendimentos

      t.timestamps
    end
  end
end
