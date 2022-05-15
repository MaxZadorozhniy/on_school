if Discipline.count.zero?
  puts 'Seeding Disciplines'

  %w(Graphic Biology).each do|name|
    Discipline.create!(name: name)
  end
end