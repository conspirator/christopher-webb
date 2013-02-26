express = require 'express'
cp = require 'child_process'
app = express()

# Configuration
app.configure(() ->
  app.use express.static(__dirname + '/public')
)

# Routes
# No routes needed. Served from public.

# Server
app.listen(3000)
console.log 'Listening on port 3000'