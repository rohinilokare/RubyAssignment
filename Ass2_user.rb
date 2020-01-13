class User
  # include Mongoid::Document
  # include Mongoid::Timestamps
  # include Mongoid::Multitenancy::Document

  # field :status, type: String, default: ""

  def active?
    puts self.status
    self.status == "active"
  end

  def inactive?
    self.status == "inactive"
  end

  def pending?
    self.status == "pending"
  end
end

