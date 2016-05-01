class CreateGesipans < ActiveRecord::Migration
  def change
    create_table :gesipans do |t|

    	t.string  :title
    	t.text    :content

      t.timestamps null: false
    end
  end
end
