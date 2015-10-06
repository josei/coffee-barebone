express = require('express')
connectAssets = require('connect-assets')
vars = require('./config/vars')

app = express()

require('./app/app')(app, vars)

app.use connectAssets(paths: ['app/assets/js', 'app/assets/css'])
app.use express.static(__dirname + '/public')
app.set 'views', __dirname + '/app/views'
app.set 'view engine', 'jade'
app.locals.css = css
app.locals.js = js

app.listen(vars.port)
