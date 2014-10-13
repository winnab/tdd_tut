module PrimeFactors
  def self.of(n)
    factors = []
    if n > 1
      factors << 2 and n/=2 if n%2 == 0
    end
    factors << n if n > 1
    factors
  end
end
