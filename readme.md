Shorty
======

Shorty is a simple Sinatra demo application that mimics a typical URL shortener
service such as goo.gl or bitly.com.

The purpose of this application was rather simple and straight forward:

1. Create a simple, modular Sinatra application
2. Demonstrate how to structure a modular application using multiple folders
3. Demonstrate how to wire up non-trivial components (a database, migrations etc)
4. Demonstrate how to do simple views/layouts with Sinatra and Erb
5. Demonstrate how to do validations/methods within an ORM model
6. Keep the code small/simple so a single developer can consume it easily

![alt text](github-snapshots/1.png "Index page for Shorty")
![alt text](github-snapshots/2.png "Shortened URL using Shorty")

Instructions
------------

1. Clone the repository onto your machine:

    $ git clone https://github.com/prophittcorey/shorty.git

2. Hop into the repository folder:

    $ cd shorty/

3. Install all required components:

    $ bundle

4. Create and prepare the database:

    $ rake db:create && rake db:migrate

5. Start the server:

    $ shotgun

6. Open a browser and navigate to `localhost:9393`

Notes
-----

There's plenty left to do with the application for instance:

1. Unit tests
2. Error checking/handling
3. Make the site look nice, add styles, features etc

License
-------

The MIT License (MIT)

Copyright (c) <2014> <Corey Prophitt>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
