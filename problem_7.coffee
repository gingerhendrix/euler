
primes = [2]
target = 10001
n = 3

isPrime = (d) ->
  for p in primes
    if n % p == 0
      return false
  true

while primes.length < target
  if isPrime(n) 
    primes.push n
  n++

console.log "The #{target}th prime is #{primes[target-1]}"


