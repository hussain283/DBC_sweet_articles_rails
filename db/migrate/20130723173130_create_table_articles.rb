class CreateTableArticles < ActiveRecord::Migration
  def change
    create_table "articles" do |t|
      t.string  :title
      t.text    :description
      t.string  :url
      t.string  :slug
      t.references :category
    end
  end
end
