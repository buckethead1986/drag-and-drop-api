# Magnets

## Overview

This is a Ruby on Rails JSON API for a front-end React project, Magnets. The
application allows users to create poems from drag and drop components. Users can create witty or silly poems from the available word bank, and follow and favorite other users and their creations.

## Database Structure

The Rails backend JSON API uses a Postgres database and is deployed via Heroku.
Our React project interacts with this JSON API through get, post, and patch
requests.

Our database is structured with the following five models:

* Users

* Poems

* Words

* Relationships

* Favorited Poems

All models have their own unique routes and are
rendered in JSON by the API. The Favorited Poems entries are accessed as a
nested attribute in the Users and Poems show and index route.

## API Use

This API is public and the only thing that requires authorization is posting to
the user session in order to login. The rest of the information is accessible to
anyone who goes to a route on the following base url:
https://magnets-api.herokuapp.com/api/v1/.

This public accessibility is mirrored in our front-end application.
https://mag-nets.herokuapp.com/
Users can find all other users and poems through a user index and a poems index respectively.
Users can see who they follow, can filter poems based on user or by favorites, but not who has followed them.
