{isPrime, primesUpTo} = require './lib/primes'

primes = primesUpTo(9999)

sequences = []


isPermutation = (a,b,c) ->
  return false unless a.length == b.length and b.length == c.length

  _canonize = (s) -> s.toString().split("").sort()
  a = _canonize(a)
  b = _canonize(b)
  c = _canonize(c)
  for char, idx in a
    return false unless b[idx] == char and c[idx] == char
  true

console.log "isPermutation 1487, 4817, 8147 - #{isPermutation(1487, 4817, 8147)}"

while p = primes.next()
  successors = primes.clone()
  while succ = successors.next()
    diff = succ - p
    if isPrime(succ + diff)
      seq = [p, succ, succ + diff]
      if isPermutation(p, succ, succ+diff)
        console.log "Sequence found #{seq}"

