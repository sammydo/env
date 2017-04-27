# Digital Profiles Environment

Environment used for running the Digital Profiles application.

* Node sverver Ubuntu trusty 64 
* Vagrant (Mongo) database is included 

### Prerequisites

What things you need to install the software and how to install them

```
git 
virtual box
vagrant 

```

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Checkout Project 

```
mkdir digital_profiles
cd digital_profiles
git clone git@github.com:sammydo/env.git env
git clone git@github.com:sammydo/digital_profiles.git app

```

### Run Project

```
cd env
vagrant up
vagrant ssh 

```

### Inside vagrant machine

```
cd /home/ubuntu/app
npm install
bower install
node index.js

```
visit development.local/ to view app


## Running the tests

Explain how to run the automated tests for this system

### Chef Spec tests - Unit Tests
```
cd env/cookbooks
berks vendor cookbooks
cd node-server
chef exec rspec

```

### Serverspec tests - Intergration Tests
```
cd env/cookbooks/node-server
chef exec rspec

```

## Acknowledgments

* DevOps 1
* Steven Reid
* Niall Wallace
