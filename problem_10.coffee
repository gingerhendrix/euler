
P = require './lib/primes'

target = 2000000
primes = P.primesUpTo target-1
sum = 0
while p = primes.next()
  sum += p

console.log "The sum of primes under #{target} is #{sum}"
