Django Tutorial working files
=============================

The code in this project isn't mine; it contains the worked examples in the
Django tutorial.

As I've been working through the tutorial I've been committing the code to git,
making notes in the commit messages about things of interest, that I might want
to check up on later.

Should you fancy trying it yourself, you can find the tutorial here:

<https://docs.djangoproject.com/en/2.1/intro/>

Setting up Docker
-----------------

All you should need to do (once you've installed Docker and docker-compose) is
define your database credentials and run `docker-compose up -d`.

Create a `.env.postgres` file that looks like this:

    POSTGRES_DB=django_tutorial
    POSTGRES_USER=django_tutorial
    POSTGRES_PASSWORD=<secret-goes-here>

Then run:

    $ docker-compose up

The site should now be accessible at http://localhost:8080/polls/.
