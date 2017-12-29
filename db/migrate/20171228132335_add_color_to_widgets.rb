class AddColorToWidgets < ActiveRecord::Migration[5.1]
  def change
  	remove_column :widgets, :color, :string
    add_reference :widgets, :color, foreign_key: true
  end
end
