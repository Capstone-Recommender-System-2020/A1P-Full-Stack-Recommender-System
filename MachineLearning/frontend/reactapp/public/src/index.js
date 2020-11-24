import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
//import cors from "cors";
//import { BrowserRouter as Router, Route} from 'react-router-dom';
import reportWebVitals from './reportWebVitals';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();

/*
var url = 'https://cors-anywhere.herokuapp.com/http://127.0.0.1:8000/api/get_events_1st_alg';

fetch(url, {
  method: 'GET',
  headers:{
    'X-Requested-With': 'XMLHttpRequest'
  }
}).then(res => res.json())
.then(response => console.log('Success:', response))
.catch(error => console.error('Error:', error));
*/

/*
const express = require('express');
const request = require('request');
// var cors = require('cors');
const app = express();

app.use(cors({ origin: true }));

app.use((req, res, next) => {
        res.header('Access-Control-Allow-Origin', '*');
        next();
    });

app.get('', (req, res) => {
        request({
                url: 'http://127.0.0.1:8000/api/get_events_1st_alg'
            },
        (error, response, body) => {
            if (error || response.statusCode !== 200) {
                return res.status(500).json({
                    type: 'error',
                    message: error.message
                });
            }
    
            res.json(JSON.parse(body));
        }
    )
    });
    
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`listening on ${PORT}`));
*/

// var cors = require('cors')
// App.use(cors())
