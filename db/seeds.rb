unless User.where(email: 'joshuadeppe15@gmail.com').count > 0
  User.create!(
    name: 'Joshua Deppe',
    email: 'joshuadeppe15@gmail.com',
    password: 'Lost Civilization',
    role: 'admin'
  )
end