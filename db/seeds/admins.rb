if Admin.count.zero?
  puts 'Seeding Admins'
  Admin.create!(email: 'admin@gmail.com', first_name: 'Admin', last_name: 'Admin', password: '123456', password_confirmation: '123456')
end