class User
  attr_accessor :status

  def active?
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
user.status = "active"
puts "active user #{user.active?}"
puts "Inactive user #{user.inactive?}"
puts "pending user #{user.pending?}"

user.status = "pending"
puts "pending user #{user.pending?}"
puts "active user #{user.active?}"
