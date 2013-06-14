User.delete_all
Dog.delete_all
Walk.delete_all

u1 = User.create(email: 'bob@gmail.com', name: 'Bob Smith', address: '770 Broadway, NYC', password: 'aaaa1234', password_confirmation: 'aaaa1234', image: 'http://images.apple.com/pr/bios/images/mansfield_hero20110204.png')
u2 = User.create(email: 'ryan@gmail.com', name: 'Ryan Gosling', address: '780 Broadway, NYC', password: 'aaaa1234', password_confirmation: 'aaaa1234', image: 'http://i.perezhilton.com/wp-content/uploads/2011/12/ryan-gosling-is-coolest-person-of-the-year__oPt.jpg', phone: '6095589593', age: 23, gender: 'male')
u3 = User.create(email: 'john@gmail.com', name: 'John Lennon', address: '790 Broadway, NYC', password: 'aaaa1234', password_confirmation: 'aaaa1234', image: 'http://www.johnlennon.com/wp-content/themes/jl/images/home-gallery/2.jpg')