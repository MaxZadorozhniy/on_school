if Teacher.count.zero?
  puts 'Seeding Teachers'
  Teacher.create!(first_name: 'Maria', last_name: 'Dow', description: 'Main teacher')
  Teacher.create!(first_name: 'John', last_name: 'Dow', description: 'Second teacher')
  Teacher.create!(first_name: 'Jane', last_name: 'Dow', description: 'Third teacher')
end