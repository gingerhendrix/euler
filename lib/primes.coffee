
_primes = [2]
_nextTrial = 3

nextPrime = ->
  trial = _nextTrial
  _nextTrial++

  if isPrime(trial)
    _primes.push(trial)
    return trial

  nextPrime()
    
primesUpTo = (limit) ->
  index = 0
  finished = false
  return next: ->
    return false if finished

    if index < _primes.length
      prime = _primes[index]

    else if _nextTrial <= limit
      prime = nextPrime()
    index++

    return prime if prime <= limit
    
    finished = true
    false


isPrime = (d) ->
  trials = primesUpTo(Math.sqrt(d))
  while p = trials.next()
    if d % p == 0
      return false
  true

module.exports = {isPrime, primesUpTo, nextPrime}
