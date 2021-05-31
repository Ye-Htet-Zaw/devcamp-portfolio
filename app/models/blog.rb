class Blog < ApplicationRecord
	enum statu: { draft: 0, published: 1 }
	extend FriendlyId
  	friendly_id :name, use: :slugged
end
