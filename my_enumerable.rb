module MyEnumerable
  def all?()
    each { |e| return false unless yield e }
    true
  end

  def any?()
    each { |e| return true if yield e }
    false
  end

  def filter()
    res = []
    each { |e| res << e if yield e }
    res
  end
end
