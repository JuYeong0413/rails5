class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :email # 255자 text
      t.text :content # 6만자 이상
      # rails db:migrate 하면 데이터베이스 테이블이 생성됨

      t.timestamps
    end
  end
end
