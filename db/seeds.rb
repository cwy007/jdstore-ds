# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# email & email可以改成自己的；
# password 至少要六位数字

u = User.create(
                email:"chanweiyan007@gmail.com",
                password: 123456,
                password_confirmation: 123456,
                is_admin: true)

u = User.create(
                email:"397721260@qq.com",
                password: 123456,
                password_confirmation: 123456,
                is_admin: true)

puts "新建2个admin用户！"



# initial products

Product.create!(title: "坚果Pro",
  description: "锤子手机 细红线",
  price: 2288,
  quantity: 5,
  image: open("http://img13.360buyimg.com/n1/s450x450_jfs/t5527/223/1660932474/149818/343ed1d7/59130e4cNa6d07fe0.jpg")
  )

