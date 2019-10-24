# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Parent.destroy_all
Sitter.destroy_all

sitters = [
  {name:"bob" },
  {name:"marta"},
  {name:"super human" },
  {name:"will drop your kid"}
]

sitters.each {|sitter| Sitter.create(sitter)}


#Seeed kept throwing an error

parents = [
  {name: "Kamala Khan", childs_age: 4},
  {name: "Doreen Green", childs_age: 2 },
  {name:"Gwen Stacy", childs_age: 1 },
  {name:"Janet Van Dyne", childs_age: 3 },
  {name:"Wanda Maximoff", childs_age: 5 },
  {name:"Carol Danvers", childs_age: 4 },
  {name:"Jean Grey", childs_age: 6 },
  {name:"Ororo Munroe", childs_age: 7 },
  {name:"Kitty Pryde", childs_age: 4 },
  {name:"Elektra Natchios", childs_age: 7  }
]

parents.each {|parent| Parent.create(parent)}

# # ---------------
# heroines = heroines.map { |heroine| heroine.merge( { power_id: Power.all.sample.id } ) }
# # ---------------

# heroines.each { |heroine| Heroine.create(heroine) }

