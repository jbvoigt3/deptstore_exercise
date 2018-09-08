require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |d|
   Dept.create(dname: "Dept_#{d}", loc: "#{d} - floor"
   )

    5.times do |p|
      Product.create(pname: "Prod_#{p}", dept_id: Dept.last.id)

      7.times do |p|
        Item.create(iname: "Item number - #{p}", product_id: Product.last.id, cost: 125)
      end
    end
end
