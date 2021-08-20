# Create user model
'''
rails generate model User email:string password_digest:string

Prompt:
Running via Spring preloader in process 89679
      invoke  active_record
      create    db/migrate/20210820115401_create_users.rb //create migration table
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml

'''
User model
- email -> string
- password_digest (hashed string) -> string


## Create the db table
'''
rails db:migrate
'''
