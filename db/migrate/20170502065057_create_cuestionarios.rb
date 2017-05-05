class CreateCuestionarios < ActiveRecord::Migration[5.0]
  def change
    create_table :cuestionarios do |t|

      t.timestamps
    end
  end
end
