# Conference API

This project is a simple API built with Ballerina, which provides information about various conferences.

## Features

- Retrieve all conferences
- Retrieve a specific conference by ID

## Endpoints

### GET /conferences

This endpoint returns a list of all conferences. Each conference includes details such as the name, description, start and end dates, location, speakers, and website.

### GET /conferences/{id}

This endpoint returns the details of a specific conference identified by its ID.

## Running the Project

1. Install Ballerina (if not already installed)
2. Clone this repository
3. Navigate to the project directory
4. Run the command `ballerina run main.bal`
5. The server will start and listen on `localhost:9090`

## Usage

- To get all conferences, send a GET request to `http://localhost:9090/conferences`
- To get a specific conference by ID, send a GET request to `http://localhost:9090/conferences/{id}`

Please replace `{id}` with the actual ID of the conference.

## Note

This is a simple project for demonstration purposes. The data is stored in-memory and will be lost when the server is stopped.