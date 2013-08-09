class Message < ActiveRecord::Base
  attr_accessible :body, :email, :name

  validates :name, :email, :body, presence: :true

  after_create :send_message

  private

  def send_message
    Notifier.contact_me(self).deliver
  end

end
