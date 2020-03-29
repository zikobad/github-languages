# Gemography Backend Coding Challenge

## Table of Contents

- [Challenge](#challenge)
- [Overview](#overview)
- [Technologies](#technologies)
- [Quick Start](#quick-Start)
  - [Requirements](#requirements)
  - [Install](#install)


## Challenge

Develop a REST microservice that list the languages used by the 100 trending public repos on GitHub on the last 30 days.
- For every language, we calculate the attributes below point_down:
  - Number of repos using this language
  - The list of repos using the language

## Overview

This a simple Ruby On Rails API App with Rspec and no Active Record. it is a simple REST API that lists the languages used by the 100 most starred repositories in the last 30 days.

This app respects all the best practices of a Ruby On Rails Api App and it implements Service Objects Pattern based on The Single Responsability Design Pattern : 

- repos_fetcher is service object repository responsible for fetching the data from the Github API.
- languages_fetcher is service object service that uses the data_fetcher to get the data then does all the necessary calculations to produce the output needed.

## Technologies

	- Ruby On Rails		: A very powerful Framework
	- Rspec 	        : For Testing the app efficiently

## Quick Start

### Requirements
	- Ruby 2.5.7
	- Web Client (Chrome, Postman etc)
### Install
  1. Clone the project
    `git clone https://github.com/zikobad/github-languages.git`
  2. Cd into project directory
    `cd github-languages`
  3. Install the dependencies
    `bundle`
  4. Run app/tests
  - To run all tests
    `rspec spec`
  - Run the app
    `rails s`

  Now the App is running on [http://localhost:3000](http://localhost:3000) with one endpoint

  |  endpoint          | description|
  |--------------------|------------|
  |  /api/v1/languages | list all languages in the 100 Popular Github Repos in the last 30 days
