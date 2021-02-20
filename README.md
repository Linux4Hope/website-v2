# website-v2-poc
POC for getting the files and tooling needed for a site revamp. We will take this repo out of POC and make public if we determine the tools and workflow in here are feasible.

## Local Development

### Getting Started

1.) [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) must be installed to work on the website locally.

2.) Clone this repository.

3.) Create a `.env` file and provide the expected values as shown below. Run `id -u` to obtain your user id.

```bash
# set your user id for the local development
myUserID=
```

4.) Run `docker-compose build` to build the image.

5.) Run `docker-compose run -u dev --service-ports website bash` to enter the container for development.

6.) Run `cd site && npm install` to navigate to the site directory and install the dependencies.

7.) After the dependencies are installed, you can run `foundation watch` while in the `site` directory
and see that Foundation is preparing the site to be served locally. Then visit `localhost:8000` in your browser
to see the site.
