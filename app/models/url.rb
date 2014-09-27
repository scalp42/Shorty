class Url < ActiveRecord::Base

  # --- Validations {{{
  validates_presence_of :full_uri
  # --- }}}

  # --- Callbacks {{{
  before_create :generate_token
  # --- }}}

  # --- Public Views {{{
  def increment_views()
    self.views += 1
    self.save
    self
  end
  # --- }}}

  # --- Private Methods {{{
  private

  def generate_token()
    loop do
      self.token = SecureRandom.hex(2)
      break unless Url.where(token: self.token).exists?
    end
  end
  # --- }}}

end
