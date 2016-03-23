# Request / Response MVC!

* Fork this repo
* Clone this repo
* Create your controllers in `app/controllers`
* Make sure they all inherit from `ApplicationController`
* Create your routes in `config/router.rb`
* Test out all the routes from the assignment using Postman
* All responses should be in JSON format.


* Run the server with `ruby bin/server.rb`
  * Please note: The server will need to be restarted every time you change your code.
* The server file _should_ be loading all your files in `app/controllers` and `app/models`. It has also loaded `pry` and `json` for you.


* You will be using the Postman app for any requests that are not `GET` requests.
* All `GET` requests can be displayed directly in the browser by navigating to the URL requested.
* In the assignment instructions, if the type of the request is not specified, it can be assumed to be `GET`.


## Defining Routes

- In `config/router.rb` you will write your routes using the private methods that are provided.
- If a route takes an id, you can't create a route for every possible number, so you will use a 'dynamic route'.
- A 'dynamic route' looks like this `:id` and the router will look for anything that fits inside of that.
- If you had a route defined like this `get('/tasks/:id, TasksController, :show)` then it would match these urls:
  - `/tasks/`
  - `/tasks/1`
  - `/tasks/2/delete`
  - `/tasks/2/edit` <- You probably dont want your show route to match your edit route and thats why..
- **Orders matters** with routes in the route file. They are searched from top to bottom and the search stops the first time the router finds a valid route.
- So your _most specific_ routes need to go first.


## Creating a controller

- All controllers should exist inside of `app/controllers/` and their name should follow a pattern. `tasks_controller.rb`
- Notice that 'tweets' is plural.
- The class must also inherit from `ApplicationController` to work properly with the router.
- An empty `tasks_controller.rb` would look something like this:

## Steps to achieve the objectives
- Create full CRUD actions for a Task.
- A Task should have a body and a field called completed which should default to false.
- User should be able to request all the Tasks via /tasks.
- Use should be able to view a single Task via /tasks/<ID_NUMBER_HERE>
- Etc etc for the rest of the RESTful CRUD actions. (POST, PUT, DELETE)
- Use should be able to view the list of all Tasks as HTML if I did not specify 'json' in the url.
- User should be able to view a single task as html as well.
