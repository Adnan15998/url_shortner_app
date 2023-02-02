const express = require('express')
const app = express()
const exphbs = require('express-handlebars')
const mongoose = require('mongoose')

// Include controller
const convertController = require('./controllers/convert')
const homeController = require('./controllers/home')

const uri = "mongodb+srv://admin:test@143@cluster0.xfxbsbj.mongodb.net/?retryWrites=true&w=majority"; //m
const port = 8000

//m
mongoose
    .connect(uri,{ useNewUrlParser: true, useUnifiedTopology: true })
    .then(() => console.log("Database Connected Successfully ... hurray "))
    .catch(err => console.log(err));
//m



// connect mongoose with database
// mongoose.connect(process.env.MONGODB_URI || 'mongodb://localhost/url', { useNewUrlParser: true }) /p

const db = mongoose.connection

// error connection
db.on('error', () => {
  console.log('mongodb error!')
})

// successful connection
db.once('open', () => {
  console.log('mongodb connected!')
})

// Include user model
const Url = require('./models/url')

// set up handlebars
app.engine('handlebars', exphbs.engine({ defaultLayout: 'main' }))
app.set('view engine', 'handlebars')

// serve static files
app.use(express.static('public'))
app.use(express.static(__dirname+'/Images'));

app.get('/', homeController)

app.get('/convert', convertController.getShortened)

app.get('/:shortenedUrl', convertController.getOriginal)

app.listen(process.env.PORT || port, () => {
  console.log('App is running')
})
