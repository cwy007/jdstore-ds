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
                email:"chanweiyan@gmail.com",
                password: 123456,
                password_confirmation: 123456,
                is_admin: true)

u = User.create(
                email:"397721260@qq.com",
                password: 123456,
                password_confirmation: 123456,
                is_admin: true)

puts "新建2个admin用户！"
