{isPrime} = require './lib/primes'

permutations = (list) ->
  return [] if list.length == 0
  return list if list.length == 1

  perms = []
  for candidate, index in list
    rest = list.slice()
    rest.splice(index, 1)
    for res in permutations(rest)
      perms.push [candidate].concat res

  perms

pandigital = (n) ->
  permutations([n..1]).map((arr) -> Number(arr.join("")))


#console.log "The permuations of [abc] are: \n\n" + permutations(["a", "b", "c"]).join("\n")

#console.log "The 4-digit pandigital numbers are: \n\t" + pandigital(4).join("\n\t")

for n in [9..2]
  trials = pandigital(n)
  console.log "Trying #{trials.length} pandigital numbers of length #{n}"
  for p in trials
    if isPrime(p)
      console.log "#{p} is the largest pandigital prime number!"
      return
    
