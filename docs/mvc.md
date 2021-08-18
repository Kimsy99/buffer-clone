# How MVC pattern in rails works

### Given this condition -> get a http request
'''
GET /about HTTP/1.1
Host: 127.0.0.1
'''


## Routes
It is the matcher for URL that is requested.

Eg -> we get /about

How it handle:
"I sww you request /about, we will let AboutController to handle it"

## Controller
- devode how to process a request and define a process
- define where things goes later
	Successful -> go there
	Unsuccessful -> go other way


## Models
Database Wrapper

User
- Qeury for records
- wrap individual records -> eg give validation (name must 3 char long)

