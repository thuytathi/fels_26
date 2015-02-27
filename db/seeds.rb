User.create!(name:  "admin",
             email: "admin@gmail.com",
             password:              "admin123",
             password_confirmation: "admin123",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
User.create!(name:  "adminnotactive",
             email: "adminnotactive@gmail.com",
             password:              "adminnotactive",
             password_confirmation: "adminnotactive",
             admin: true)
User.create!(name:  "notactive",
             email: "notactive@gmail.com",
             password:              "notactive",
             password_confirmation: "notactive")
User.create!(name:  "active",
             email: "active@gmail.com",
             password:              "active",
             password_confirmation: "active",
             activated: true,
             activated_at: Time.zone.now)
Category.create!(name: "Basic 500",
                 icon: nil,
                 total:500,
                 created_at: Time.zone.now)
Category.create!(name: "Family",
                 icon: nil,
                 total:100,
                 created_at: Time.zone.now)
Word.create!(word: "日本語",
             category_id:1,
             created_at: Time.zone.now)
Word.create!(word: "お母さん",
             category_id:2,
             created_at: Time.zone.now)
Answer.create!(answer: "Tiếng Nhật",correct:true,word_id:1,created_at: Time.zone.now)
Answer.create!(answer: "Người Nhật",correct:false,word_id:1,created_at: Time.zone.now)
Answer.create!(answer: "Tiếng Việt",correct:false,word_id:1,created_at: Time.zone.now)
Answer.create!(answer: "Người Nhật",correct:false,word_id:1,created_at: Time.zone.now)
Answer.create!(answer: "Bố",correct:false,word_id:2,created_at: Time.zone.now)
Answer.create!(answer: "Con",correct:false,word_id:2,created_at: Time.zone.now)
Answer.create!(answer: "Mẹ",correct:true,word_id:2,created_at: Time.zone.now)
Answer.create!(answer: "Ông",correct:false,word_id:2,created_at: Time.zone.now)
30.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
                             activated: true,
               activated_at: Time.zone.now)
end
# Following relationships
users = User.all
user  = users.first
following = users[1..20]
followers = users[10..30]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }


