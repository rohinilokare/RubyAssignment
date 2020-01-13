class User
  attr_accessor :status

  def active?
    puts 'hello in active'
    self.status == "active"
  end

  def inactive?
    self.status == "inactive"
  end

  def pending?
    self.status == "pending"
  end
end

user = User.new()
user.active?