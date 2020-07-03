# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create( user_name: "John", password: "123", role: "Software Engineer")
user2 = User.create( user_name: "Wich", password: "1111", role: "Frontend Engineer")
user3 = User.create( user_name: "William", password: "121212", role: "Backend Engineer")

job1 = Job.create(user_id: user1.id, title: "Jr Software Engineer", company: "Forbes", date: "1st july 2020", link: "https://first.com", status: "rejected")
job1 = Job.create(user_id: user1.id, title: "Software Engineer", company: "NY Times", date: "21st May 2020", link: "https://first.com", status: "active")
job1 = Job.create(user_id: user2.id, title: "Web Engineer", company: "Facebook", date: "9th May 2020", link: "https://first.com", status: "active")
job1 = Job.create(user_id: user3.id, title: "Skilled Backend Engineer", company: "Google", date: "30th June 2020", link: "https://first.com", status: "pause")