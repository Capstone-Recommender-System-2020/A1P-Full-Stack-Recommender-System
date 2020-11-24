import React, { Component } from "react";
import { BrowserRouter, Route, Switch } from "react-router-dom";
import { Container, Row, Col } from "react-bootstrap";
import "./App.css";
import Home from "./Home";
import ArborEventPage from "./ArborEventPage";
import Navigation from "./Navigation";
import UserHeaderLogo from "./UserHeaderLogo"

class App extends Component {
  render() {
    return (
      <Container fluid className="cont">
        <Row className="rowheader">
          <Col className="collogo">
            <div>
              <UserHeaderLogo className="userheader"></UserHeaderLogo>
            </div>
          </Col>
        </Row>
        <Row className="browserrow">
          <BrowserRouter className="browserrouter">
            <div>
              <Switch>
                <Route path="/" component={Home} exact />
                <Route path="/arborpage" component={ArborEventPage} />
              </Switch>
            </div>
          </BrowserRouter>
        </Row>
        <Col className="colnav">
          <BrowserRouter>
            <Navigation />
          </BrowserRouter>
        </Col>
      </Container>
    );
  }
}

export default App;
