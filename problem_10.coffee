
primes = [2]
target = 2000000
n = 3

isPrime = (d) ->
  for p in primes
    if n % p == 0
      return false
    if p > Math.sqrt(d)
      return true
  true

while n < target #primes.length < target
  if isPrime(n) 
    primes.push n
  n+=2


sum = 0
sum += p for p in primes


console.log "The sum of primes under #{target} is #{sum}"
