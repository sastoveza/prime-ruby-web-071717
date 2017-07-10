def prime?(num)
  return false if num != num.abs || num == 0 || num == 1

  primes = (2..num).to_a

  for divisor in primes
    break if divisor * divisor > num
    return false if num % divisor == 0
  end

  true
end

puts prime?(-5)
