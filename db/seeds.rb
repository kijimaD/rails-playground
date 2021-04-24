# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create(name: 'Germany', population: 81831000)
Country.create(name: 'France', population: 65447374)
Country.create(name: 'Belgium', population: 10839905)
Country.create(name: 'Netherlands', population: 16680000)

country_list = [
  ["Gernamy", 81831000],
  ["France", 65447374],
  ["Belgium", 10839905],
  ["Netherlands", 16680000]
]

country_list.each do |name, population|
  Country.create(name: name, population: population)
end

Album.create(name: "Sgt. Pepper's", release_year: 1967)
Album.create(name: "Pet Sounds", release_year: 1966)

fruits = Category.create(name: "Fruits")
vegetables = Category.create(name: "Vegetables")
jams = Category.create(name: "Jams")

fruits.products.create(name: "Apple", price: 1)
fruits.products.create(name: "Banana", price: 2)
fruits.products.create(name: "Pineapple", price: 3)
fruits.products.create(name: "Raspberry", price: 1)
fruits.products.create(name: "Strawberry", price: 1)

vegetables.products.create(name: "Potato", price: 2)
vegetables.products.create(name: "Carrot", price: 1)
vegetables.products.create(name: "Broccoli", price: 2)
vegetables.products.create(name: "Cauliflower", price: 1)

jams.products.create(name: "Strawberry", price: 1)
jams.products.create(name: "Raspberry", price: 1)

ProductOnline.create(name: 'Milk', price: 0.45)
ProductOnline.create(name: 'Butter', price: 0.75)
ProductOnline.create(name: 'Flour', price: 0.45)
ProductOnline.create(name: 'Eggs', price: 1.45)
ShopProduct.create(name: 'Milk (1 liter)', weight: 1000, in_stock: true, price: 0.45, expiration_date: Date.today + 14.days)
ShopProduct.create(name: 'Butter (250 g)', weight: 250, in_stock: true, price: 0.75, expiration_date: Date.today + 14.days)
ShopProduct.create(name: 'Flour (1 kg)', weight: 1000, in_stock: false, price: 0.45, expiration_date: Date.today + 100.days)
ShopProduct.create(name: 'Jelly Babies (6 x 300 g)', weight: 1500, in_stock: true, price: 4.96, expiration_date: Date.today + 1.year)
ShopProduct.create(name: 'SuperDuper Cake Mix', in_stock: true, price: 11.12, expiration_date: Date.today + 1.year)
ShopProduct.create(name: 'Peanuts (8 x 200g bag)', in_stock: false, weight: 1600, price: 17.49, expiration_date: Date.today + 1.year)

ScProduct.create(name: 'Apple', price: 1)
ScProduct.create(name: 'Orange', price: 1)
ScProduct.create(name: 'Pineapple', price: 2.4)
ScProduct.create(name: 'Marble cake', price: 3)

RProduct.create(name: 'Apple', price: 1)
RProduct.create(name: 'Orange', price: 1)
RProduct.create(name: 'Pineapple', price: 2.4)
RProduct.create(name: 'Marble cake', price: 3)

Post.create(subject: 'A test', published_on: '01.10.2011')
Post.create(subject: 'Another test', published_on: '01.10.2011')
Post.create(subject: 'And yet one more test', published_on: '02.10.2011')
Post.create(subject: 'Last test', published_on: '01.11.2011')
Post.create(subject: 'Very final test', published_on: '01.11.2011')
