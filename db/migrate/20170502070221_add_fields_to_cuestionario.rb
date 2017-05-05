class AddFieldsToCuestionario < ActiveRecord::Migration[5.0]
  def change
    add_column :cuestionarios, :nombre, :string
    add_column :cuestionarios, :nombre2, :string
    add_column :cuestionarios, :tiempo, :integer
    add_column :cuestionarios, :amar, :boolean
    add_column :cuestionarios, :estar, :boolean
    add_column :cuestionarios, :muchoTiempo, :boolean
    add_column :cuestionarios, :segura, :boolean
    add_column :cuestionarios, :queHarias, :string
  end
end
