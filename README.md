# lukasrichtercz 👨
This is my personal website project.
  
You can see it running at [www.lukasrichter.cz](https://www.lukasrichter.cz).

## Technical info
It is running in a [Docker](https://docs.docker.com/get-started/overview/) container provided by [roští.cz](https://rosti.cz/).

It is going to be build on [Django](https://www.djangoproject.com/) with [nginx](https://nginx.org/en/) and possibly some
database ([SQLite](https://www.sqlite.org/index.html) or [MySQL](https://www.mysql.com/)) but right now it is a [WIP](https://www.dictionary.com/browse/wip).

## Management info
Project is being managed mainly by [Free YouTrack](https://www.jetbrains.com/youtrack/download/get_youtrack.html#section=incloud)
but I also use tools like [Google Keep](https://www.google.com/keep/), [Google Drive](https://www.google.com/drive/),
[diagrams.net](https://www.diagrams.net/) and so on. 

## Development instructions
### Guideline
To guarantee a good quality and condition of the project there are certain principles and customs it is recommended to
follow. Please read them in a [guideline](/docs/guideline.md) before you start developing.  

### Initial setup
1) create and activate [virtual environment](https://pypi.org/project/virtualenv/)
```bash
virtualenv venv
source venv/bin/activate
```
2) install dependencies
```bash
poetry install
```
3) set up git hooks by pre-commit
```bash
pre-commit install
```
4) install [`rostictl`](https://docs.rosti.cz/cs/quickstart/rostictl/#instalace) (for deployment and production status)

### Application run
```bash
python -c "from app.app import application; application.run()"
```

Then you can visit website at:
```
http://localhost:8080
```

### Testing
```bash
# there is nothing to test at the moment
```

### Deployment
Deployment is defined by [Rostifile](/Rostifile) and can be done by [`rostictl`](https://docs.rosti.cz/cs/quickstart/rostictl) tool.

**Note:** It requires an access token which you can get from [Roští administration](https://admin.rosti.cz/settings/profile/regenerate-token).  
**Warning:** It is not possible to pick what files should be uploaded only which should not be so be careful about
not uploading anything unwanted.

```bash
rostictl up
```

## Troubleshooting
In case of any unknown troubles with the application it might be convenient to do some checks.

### Website itself
[www.lukasrichter.cz](https://www.lukasrichter.cz)

### Application status
```bash
rostictl status
```

### Roští administration
- [info](https://admin.rosti.cz/1491/apps/detail/5203/)
- [graphs](https://admin.rosti.cz/1491/apps/graphs/5203/)
- [services](https://admin.rosti.cz/1491/apps/services/5203/)

### Container
```bash
ssh app@ssh.rosti.cz -p 25203  # requires SSH key
```

```bash
# logs
cd log
tail *

# resources
free -h
df -h

# services & processes
supervisorctl status
htop
```

## License
[MIT License](LICENSE)