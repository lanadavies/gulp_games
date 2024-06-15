# Gulp Games

This is a tournament application where people can enter and compete against each other in various drinking games. Participants can join the tournament by scanning a QR code. The application will then generate a tournament structure for the games.

## Technologies Used

* Ruby on Rails
* PostgreSQL
* Pusher (for WebSockets)

## Configuration

To configure the application, follow these steps:

1. Clone the repository
2. Install the necessary gems with `bundle install`
3. Set up your database credentials in `config/database.yml`
4. Set up your Pusher credentials in `config/pusher.yml`

## Database Creation

To create the database, run:

```bash
rails db:create