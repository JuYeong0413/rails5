class AddNameToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :name, :string
    # add_column 테이블이름 추가할attribute이름 type
  end
end
