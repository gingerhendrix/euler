
sum = 0
limit = 1000

for n in [0...limit]
  sum += n if n % 3 == 0 or n % 5 == 0

console.log "Sum is #{sum}"

