class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map { |audition| audition.actor }
  end

  def locations
    self.auditions.map { |audition| audition.location }
  end

  def lead
    lead = self.auditions.find_by(hired:true) 
    unless lead == nil
      lead
    else
      'no actor has been hired for this role'
    end

  end

  def understudy
    under_study = self.auditions.where(hired:true).second
    #Customer.where(id: [1, 2]).and(Customer.where(id: [2, 3]))
    unless under_study == nil
      under_study
    else
      'no actor has been hired for understudy for this role'
    end

  end

end