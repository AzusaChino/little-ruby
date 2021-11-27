module Irish
  def repeat(n)
    raise ArgumentError, "#{n} is negative!" if n < 0
    unless block_given?
      return object.to_enum(__method__, n) do
        sz = size
        sz * n if sz
      end
    end
    each do |*val|
      n.times {
        yield *val
      }
    end
  end
end

