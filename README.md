# README

### Helpful resources 📚

<https://graphql-ruby.org/getting_started.html>

<https://selleo.com/blog/how-to-setup-a-project-with-ruby-on-rails-postresql-and-graphql>

<https://github.com/rmosolgo/graphql-ruby/blob/master/guides/fields/arguments.md>

### Getting started 🚀

Graphql is a query langage for API, and allow client to ask for needed informations only.
For example, we have a User model, with more than 100 attributes. We just want to fetch user's emails.
Once `graphql` is installed, run `bundle install`

```bash
rails g graphql:install
```

Then run again `bundle`

```json
"user: {
  email: 'example@email.com'
}"
```

## Examples

- We make a request to receive the `id` and the `lastName` for each users in the response:

### on /graphiql

Open the `/graphiql` url to test the requests

```json
// request
{
  allUsers {
    id
    lastName
  }
}
// response
{
  "data": {
    "allUsers": [
      {
        "id": "1",
        "lastName": "Granger"
      },
      {
        "id": "2",
        "lastName": "Rogue"
      }
    ]
  }
}
```

### Request with curl

```bash
curl -XPOST -d 'query={ allUsers { id lastName } }' http://localhost:3000
```

### Chain the requests

We need multiple informations: a users list and the birthdate of a user.

```json
// request
{
  allUsers {
    firstName
  }
  user(id:2) {
    birthdate
 }
}

// response
{
  "data": {
    "allUsers": [
      {
        "firstName": "Hermione"
      },
      {
        "firstName": "Severus"
      },
      {
        "firstName": "Harry"
      }
    ],
    "user": {
      "birthdate": "1960-11-04"
    }
  }
}
```

### Mutations

- We generate mutations to mutate the database (obviously). For example, we want to create a new user.

```bash
rails g graphql:mutation create_user
```

- Example with /graphiql:

```js
mutation {
  createUser( input: {
    firstName: "Harry",
    lastName: "Potter",
    email: "email",
    birthdate: "dfdsf"
  })

  // To receive a response with firstName and id, we mention it below
  {
    user {
      id
      firstName
    }
  }
}
```
