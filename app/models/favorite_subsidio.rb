# frozen_string_literal: true

class FavoriteSubsidio < ApplicationRecord
  belongs_to :subsidio
  belongs_to :user
end
