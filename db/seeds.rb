# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category = Category.create(name: 'Tee Shirts')
category.items.create(name: 'Hawaian Tee Shirt', price: 30)
category.items.create(name: 'Mr Tee Shirt', price: 70)
category.items.create(name: 'Kool-add tee Shirt', price: 67)
category.items.create(name: 'Hersey Tee Shirt', price: 9)
category.items.create(name: 'You can do it! Tee Shirt', price: 80)
category.items.create(name: 'Feney Tee Shirt', price: 15)
category.items.create(name: 'Vacation Tee Shirt', price: 40)
category.items.create(name: 'Ruby Tee Shirt', price: 90)

category = Category.create(name: 'Sandals')
category.items.create(name: 'Strappy sandals', price: 10)
category.items.create(name: 'Purple sandals', price: 4)
category.items.create(name: 'Pink sandals', price: 2)
category.items.create(name: 'Gladiator sandals', price: 7)
category.items.create(name: 'Water sandals', price: 12)
category.items.create(name: 'Beach sandals', price: 19)
category.items.create(name: 'Sky sandals', price: 16)

category = Category.create(name: 'Toys')
category.items.create(name: 'Little People', price: 50)
category.items.create(name: 'Heman', price: 40)
category.items.create(name: 'Barbie', price: 29)
category.items.create(name: 'Nature Puzzle', price: 5)
category.items.create(name: 'Legos', price: 20)
category.items.create(name: 'Cabbage Patch Kid', price: 79)
category.items.create(name: 'Easy Bake', price: 150)

category = Category.create(name: 'Jewlery')
category.items.create(name: 'Diamond Ring', price: 1200)
category.items.create(name: 'Stone Ring', price: 40)
category.items.create(name: 'Bracelet', price: 25)
category.items.create(name: 'Gold Necklace', price: 50)
category.items.create(name: 'Silver Necklace', price: 73)
category.items.create(name: 'Ankle Bracelet', price: 9)
category.items.create(name: 'Toe Ring', price: 10)
