class Short < ActiveRecord::Base


  attr_accessor :desc
 



  def b36_id
    self.id.to_i.to_s(36)
  end

 def to_param
    if self.desc.nil?
     b36_id
   else
    "#{b36_id}/#{self.desc.parameterize}"
    end
  end



end
