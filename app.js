var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const cors = require('cors');

const userRoute = require('./app/user/route');
const certificateRoute = require('./app/certificate/route');

const Handler404NotFound = require('./middleware/Handler404');
const CustomErrorHandler = require('./middleware/CustomErrorHandler');

var app = express();
require('dotenv').config();
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(cors());


// Routing
app.use('/user', userRoute);
app.use('/certificate', certificateRoute);

app.use(Handler404NotFound);
app.use(CustomErrorHandler);


module.exports = app;
