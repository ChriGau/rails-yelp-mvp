class Restaurant < ApplicationRecord

   # link 1 restaurant to many reviews
   # when deleting 1 restaurant it deletes its reviews
   has_many :reviews, dependent: :destroy

# a restaurant must have a name and address
   validates :name,  presence: true
   validates :address, presence: true
   # the restaurant category should belong to a fixed list
   validates :category, presence: true, inclusion: {in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: true}

   LIST = ["chinese", "italian", "japanese", "french", "belgian"]

end
