module.exports = (app, vars)->
  app.get '/', (req, res) =>
    res.render 'index'
