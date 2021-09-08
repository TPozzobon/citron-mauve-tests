class Comment < ApplicationRecord
  belongs_to :post, counter_cache: true #entraînera moins de demandes à la base de données (perfs up)

  validates :content, length: {minimum: 10}
end
