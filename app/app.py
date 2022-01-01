import bottle


@bottle.route("/")
def home():
    return """
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Lukáš Richter</title>
</head>
<body>
<h1>Vítejte na stránce www.lukasrichter.cz!</h1>
<p>Tato stránka je právě v procesu vývoje.</p>
<p>Zkuste prosím přijít později.</p>
<p>Děkuji.</p>
</body>
</html>
"""


application = bottle.default_app()
