<h1 align="center">Clarity - Backend (Rails API)</h1>

<div align="center">
A mindfulness hub for users to find inspiration, journal, and search for guided meditation videos. This guide walks through the steps needed to get the UI up and running.
</div>

<div align="center">
  <sub>Built with ❤️ by
  <a href="https://github.com/cjl248">Chris Liendo</a>
  </sub>
</div>

<br>

## Features
- Video search using the YouTube API that lets the use find guided meditations, mindfulness teachers, calming music and more
- Allows users to chose a personally inspiring picture/quote combination on their landing that persists through pageUnsplash API and an inspiration quote API
- CRUD-eneabled journaling that updates optimistically and persists through the backend
- Widget for recording and tracking timed meditation sessions of different lengths

## Tech Stack
<h3>This web app makes use of the following: </h3>

**Backend**
- Ruby \[2.6.1\]
- Rails API \[~> 5.2.4.2\]
- Custom Serailizer
- PostgreSQL \[>= 0.18, < 2.0\]
- bcrypt \[~> 3.1.7\]
- jwt \[~> 2.2\]

**Frontend**
- React \[^16.10.2\]
- Material-UI \[^4.5.1\]
- Custom CSS

**API Keys**
<h3>This web app uses API keys from: </h3>
- <a href="https://developers.google.com/youtube/v3">YouTube API</a> <br>
- <a href="https://unsplash.com/developers">Unsplash API</a> <br>
- <a href="https://rapidapi.com/HealThruWords/api/universal-inspirational-quotes/details">HealThruWords API</a>

## Prerequisites
<h3>Before you begin, please make sure you have installed the latest versions of: </h3>
- <a href="https://www.ruby-lang.org/en/">Ruby</a> <br>
- <a href="https://rubyonrails.org/">Rails</a> <br>
- <a href="https://www.postgresql.org/">PostgreSQL</a> <br>
- <a href="https://nodejs.org/en/">Node</a> <br>
- <a href="https://www.npmjs.com/">NPM</a>

## Installation
<p>
  <i>For information on frontend installation please click here: <a href="https://github.com/cjl248/clarity-frontend-react">Clarity Frontend</a></i>
</p>

**Backend Installation**
- Clone this repo to your local machine git clone `<this-repo-url>`
- `cd` to the backend directory
- Run bundle install to install required dependencies
- Make sure you have a JWT Secret Key
- Add jwt secert key in the /config/application.yml file:
`
jwt_secret_key: 'YOUR_SECRET_KEY'
`
- Ensure you have PostgreSQL running
- Run `rails db:create` to create a local database
- Run `rails db:migrate` to create tables
- Run `rails db:seed` to create and save the seed data
- Run `rails s` to start the server

## Demos

**Users can select an inspiring picture and quote combination for their landing page...**

<img src="./public/GIFS/inspiration-demo.gif"
     alt="Showing how users can cycle through different inspiring pictures."
     style="max-width: 100%" />

**Users can also add, edit and delete their journal entries, which persist in the database...**

<img src="./public/GIFS/journal-demo.gif"
  alt="Showing Clarity's journaling functionality."
  style="max-width: 100%" />

**As well as record timed meditation sessions...**

<img src="./public/GIFS/meditation-demo.gif"
  alt="Showing a sample timed meditation."
  style="max-width: 100%" />

**And search for mindfulness videos from a variety of channels by keyword.**

<img src="./public/GIFS/video-search-demo.gif"
  alt="Showing an example if video search."
  style="max-width: 100%" />
