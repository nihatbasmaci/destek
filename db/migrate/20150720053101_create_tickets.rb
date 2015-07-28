class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|

      t.string :title
      t.text :content
      t.string :category

      t.timestamps null: false
    end
  end
end
