class CreatePoets < ActiveRecord::Migration[5.0]
  def change
    create_table :poets do |t|
      t.string :poet_tok

      t.timestamps
    end
  end
end
