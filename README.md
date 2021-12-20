# lukasrichtercz 👨
This is my personal website project.
  
You can see it running at [lukasrichter.cz](https://www.lukasrichter.cz).

## Technical info
It is running in a [Docker](https://docs.docker.com/get-started/overview/) container provided by [roští.cz](https://rosti.cz/).

It is going to be build on [Django](https://www.djangoproject.com/) with [nginx](https://nginx.org/en/) and possibly some
database ([SQLite](https://www.sqlite.org/index.html) or [MySQL](https://www.mysql.com/)) but right now it is a [WIP](https://www.dictionary.com/browse/wip).

## Management info
Project is being managed mainly by [Free YouTrack](https://www.jetbrains.com/youtrack/download/get_youtrack.html#section=incloud)
but I also use tools like [Google Keep](https://www.google.com/keep/), [Google Drive](https://www.google.com/drive/),
[diagrams.net](https://www.diagrams.net/) and so on. 

## Development instructions
### <Guideline>

### Initial setup
1) create and activate [virtual environment](https://pypi.org/project/virtualenv/)
```commandline
virtualenv venv
source venv/bin/activate
```
2) install dependencies
```commandline
poetry install
```
3) set up git hooks by pre-commit
```commandline
pre-commit install
```
### Application run
```commandline
# there is nothing to run at the moment
```

### Testing
```commandline
# there is nothing to test at the moment
```

### Deployment
```commandline
# there is nothing to deploy at the moment
```

## License
[MIT License](LICENSE)