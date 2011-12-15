class Mongoid::Criteria
  
  def [] selector
    case selector
    when Integer
      self.skip(selector).limit(1)
    when Range
      unless selector.last == -1
        self.skip(selector.to_a[0]).limit(selector.to_a.size)
      else
        self.skip(selector.first).limit(1000)
      end
    end
  end
  
  def one
    self.limit(-1).to_a[0]
  end
  
end