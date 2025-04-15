<h2>Postman basics</h2>

What is Postman?
Oversimplified version:
- a simple app to test APIs (Application Programming Interface)
- the basic thought is to send a request get some data back to see if the API is working

Complex version:
- Postman is an API development tool used to build, test, and document RESTful APIs. It allows you to send HTTP requests (like GET, POST, PUT, DELETE) to a server and view the response in a clean, user-friendly interface.

Core concepts:
1. Requests - what you send to a server. It contains:
- URL (endpoint)
- Method: the HTTP method like GET, POST, etc.
- Headers: extra info like Authorization, content-type
- Body: Optional content (usually in POST/PUT requests) like JSON data

2. Response:
- Status code: e.g. 200(ok), 404(Not Found), 401(Unauthorized)
- Response body: often JSON or XML
- Headers: Metadata from the server

<h3>Most Common HTTP Methods</h3>

1. GET (retrieve) - Fetch data from the server
2. POST (create) - Send new data to the server
3. PUT (update(full)) - Replace existing data
4. PATCH (update(partial)) - Update part of a resource
5. DELETE (delete) - Remove resource


**Why is Postman useful?**
- Frontend devs: Test backend APIs without writing code
- Backend devs: Manually test your endpoints
- QA testers: Automate API tests
- Teams: Share collections, use environments, and collaborate on API development


<h3>What is an API?</h3>
API stands for Application Programming Interface. It's like a waiter in a restaurant: it takes your order(request) to the kitchen (server) and brings your food(response) back.

API lets two pieces of software communicate with each other. You (the client) send a request to the API, and it send back data from the server.

<h4>What is a Token?</h4>
A token is like and ID card or key - it's proof that you are authorized to access certain parts of an API.
Most modern APIs don't allow just anyone to send requests. Instead, yoou must authenticate first (prove who you are), and then the server gives you a token.
That token must be included in every request to prove that you're allowed to access the resource.

How Tokens work:
Login (or authenticate) using your credentials.
- You send a POST request with your username & password.
- The API responds with a token (usually a JWT or Bearer token).
Use the token in all future requests.
- You include the token in the request headers like this:
    e.g.: "Authorization: Bearer <your_token>
- This tells the API: “Hey, I’m authorized!”
API checks the token.
- If valid → it returns the data.
- If invalid/missing → it says “401 Unauthorized.”