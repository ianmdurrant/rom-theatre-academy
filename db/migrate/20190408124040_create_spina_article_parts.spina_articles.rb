# This migration comes from spina_articles (originally 3)
class CreateSpinaArticleParts < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_article_parts do |t|
      t.integer :article_id
    end
  end
end
