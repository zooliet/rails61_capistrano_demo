class Todo < ApplicationRecord
  # broadcasts_to :itself
  broadcasts_to ->(todo) {['todos']}

end
