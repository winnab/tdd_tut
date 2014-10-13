module PrimeFactors
  def self.of(n)
    factors, divisor = [], 1
    while n > 1 and divisor += 1
      factors << divisor and n/=divisor while n%divisor == 0
      divisor = n-1 if divisor > Math.sqrt(n)
      # every composite number has a prime factor less than or equal to its square root
    end
    factors
  end
end
