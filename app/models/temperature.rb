class Temperature < ApplicationRecord
  belongs_to :procedure
  broadcasts_to :procedure
  # after_create_commit -> { broadcast_append_to procedure }
  # after_destroy_commit -> { broadcast_remove_to procedure }
  after_update_commit -> { broadcast_replace_to procedure }
end
