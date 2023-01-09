import os.path
import pathlib

import bottle


STATIC_DIRECTORY = os.path.join(pathlib.Path(__file__).parent.resolve(), "static")


@bottle.route("/")
def home():
    return bottle.static_file("wip.html", root=STATIC_DIRECTORY)


application = bottle.default_app()
