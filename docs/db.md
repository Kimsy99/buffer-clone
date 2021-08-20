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


## Check user model in console
```
rails console / rails c => get into console

> User # establish connection

> User.all #get all entries


```


## Create new entry of user with auto create hash pwd
```
irb(main):003:0> User.create({email: "kim@gmail.com", password: "password", password_confirmation: "password"})
  TRANSACTION (0.2ms)  begin transaction
  User Create (3.7ms)  INSERT INTO "users" ("email", "password_digest", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["email", "kim@gmail.com"], ["password_digest", "$2a$12$sX5Bzwa6lEfZe/wDcTDKneLhSSemGWjYt1iHGMhDrnxrYwznbbnVW"], ["created_at", "2021-08-20 12:03:07.957323"], ["updated_at", "2021-08-20 12:03:07.957323"]]
  TRANSACTION (2.6ms)  commit transaction
=>
#<User:0x00007f95438898e0
 id: 1,
 email: "kim@gmail.com",
 password_digest: "[FILTERED]",
 created_at: Fri, 20 Aug 2021 12:03:07.957323000 UTC +00:00,
 updated_at: Fri, 20 Aug 2021 12:03:07.957323000 UTC +00:00>
```

Get first entry
```
irb(main):004:0> User.first
  User Load (0.4ms)  SELECT "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT ?  [["LIMIT", 1]]
=>
#<User:0x00007f953db914f8
 id: 1,
 email: "kim@gmail.com",
 password_digest: "[FILTERED]",
 created_at: Fri, 20 Aug 2021 12:03:07.957323000 UTC +00:00,
 updated_at: Fri, 20 Aug 2021 12:03:07.957323000 UTC +00:00>
```

# Make changes id model
```
rails db:rollback

rails db:migrate

OR

rails db:redo
rails db:migrate:redo
```

