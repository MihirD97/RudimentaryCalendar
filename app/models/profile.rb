class Profile < ActiveRecord::Base
  belongs_to :user
  validates :gender, inclusion: {in: %w(male female)}
  validate :last_or_first
  validate :boy_named_sue
  def last_or_first
  	if last_name.nil?
  		if first_name.nil?
  			errors.add(:first_name, "and Last Name can't both be null at same time ")
  		end
  	end
  end

  def boy_named_sue
  	if first_name=="Sue"
  		if gender=="male"
  			errors.add(:first_name, "Yeah...no")
  		end

  	end
  end

  def self.get_all_profiles min, max
  	p1 = Profile.where("birth_year BETWEEN ? AND ?", min, max)
  	p2 = p1.order(:birth_year)
  end




end
