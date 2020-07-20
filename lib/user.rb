# 2.2. On s'échauffe avec la classe User

class User
  
  attr_accessor :email
  attr_accessor :age

  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users.push(self)
  end

  def self.all
    all_users = @@all_users.length
  end

  def self.find_by_email(email)
    @@all_users.select { |user| user.email == email }.first
  end

end


