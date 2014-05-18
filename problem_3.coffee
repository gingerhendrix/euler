{isPrime, primesUpTo} = require './lib/primes'

factorize = (n) ->
  trials = primesUpTo Math.sqrt(n)
  factors = []
  remainder = n
  
  while (p = trials.next()) and remainder > 1
    if remainder % p == 0 
      factors.push p
      remainder = remainder / p

  factors

test = 600851475143 
console.log "The prime factors of #{test} are #{factorize(test).join(",")}"
