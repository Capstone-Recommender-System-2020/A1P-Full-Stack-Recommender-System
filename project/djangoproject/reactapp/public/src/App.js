import logo from './logo.svg';
import './App.css';
import { useState } from 'react';
import axios from 'axios';

function App() {
  /*
  const config = {
    headers: {
      "Access-Control-Allow-Origin": "*"
    }
  };
  */
  
  const [json_response1, set_json_response1] = useState("1st algorithm - List of similar events");
  
  function request_json_response(){
    axios.get('http://127.0.0.1:8000/api/get_events_1st_alg', {"ID":"User_ID1"})
      .then(function (response) {
        // handle success
        set_json_response1(response);
      });
  }

  /*

  const axios = require('axios');

  axios.get('http://127.0.0.1:8000/api/get_events_1st_alg', { params: {"ID":"User_ID1"}}).then(resp => {
      console.log(resp.data);
  });
  */

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        
        <p>
          {json_response1}
        </p>

        <button onClick={request_json_response}>
          Generate events for user
        </button>

        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;