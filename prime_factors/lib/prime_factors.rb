module PrimeFactors
  def self.of(n)
    factors = []
    divisor = 2
    while n > 1
      factors << divisor and n/=divisor while n%divisor == 0
      divisor += 1
    end
    factors
  end
end
