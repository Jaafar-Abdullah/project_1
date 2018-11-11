# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

user1= User.create(user_name: "Jafar",user_image: "", email: "jafar@gmail.com", password: "chicken", password_confirmation: "chicken")
user2= User.create(user_name: "Ali",user_image: "", email: "ali@gmail.com", password: "chicken", password_confirmation: "chicken")

Message.destroy_all
message1 = Message.create(body: "Hi",user_id:user1.id)
message2 = Message.create( body: "Hi:::::",user_id: user2.id)


Group.destroy_all

group1 = Group.create(group_name: "jj")


user1.groups << Group.find_by(group_name: "jj")







