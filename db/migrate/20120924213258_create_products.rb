# 通过rake db:migrate 来迁移数据库
# database.yml文件中定义了数据库连接内容
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      # 指定price字段的有效长度8位，小数点后2位
      t.decimal :price, :prescision => 8, :scale => 2

      t.timestamps
    end
  end
end
