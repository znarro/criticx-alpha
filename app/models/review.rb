# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewable, polymorphic: true

  after_create :create_review
  after_destroy :destroy_review

  private

  def create_review
    user.review_count += 1
    user.save
  end

  def destroy_review
    user.review_count -= 1 if user.review_count.positive?
    user.save
  end
end
