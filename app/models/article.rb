# == Schema Information
#
# Table name: articles
#
#  article_category_id :bigint(8)
#  body                :text
#  created_at          :datetime         not null
#  date                :date
#  id                  :bigint(8)        not null, primary key
#  introduction        :text
#  slug                :string
#  title               :string
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_articles_on_article_category_id  (article_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (article_category_id => article_categories.id)
#

class Article < ApplicationRecord
  include Fae::BaseModelConcern
  has_fae_file :pdf

  has_fae_image :hero_image

  def fae_display_field
    title
  end

  belongs_to :article_category
end
