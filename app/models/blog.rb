class Blog < ApplicationRecord
    belongs_to :author
    has_many :feedbacks
    accepts_nested_attributes_for :author

    validates :title, presence: true
    validates :content, presence: true
end