import React from "react";
import "./Home.css";
import drums from "./images/drums.png";
import flute from "./images/flute.png";
import "bootstrap/dist/css/bootstrap.min.css";
import { Container, Row, Col } from "react-bootstrap";
import { Form, Button } from "react-bootstrap";
import Slider from "./components/Slider";
import { BrowserRouter, Route, Switch } from "react-router-dom";
import ArborEventPage from "./ArborEventPage";

function Home() {
  return (
    <Container fluid className="conthome">
      <div>
        <Row className="rows">
          <Col className="column1" lg={9}>
            <h1 className="recomheader">Recommendations</h1>
            <p1 className="p">
              <Row className="discoveryheader">
                <div class="shadowsharp"> Discovery</div>
              </Row>
              <Slider className="sliderrow1">
                <div class="container">
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=1"
                      alt="new"
                    />
                    <p className="et">
                      Heard Natural Science Museum & Wildlife Sanctuary
                    </p>
                    <p className="el">1 Nature Pl, McKinney, TX 75069</p>
                    <p className="ep">$7.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=2"
                      alt="new"
                    />
                    <p className="et">Frontiers of Flight Museum </p>
                    <p className="el">6911 Lemmon Ave, Dallas, TX 75209</p>
                    <p className="ep">$10.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=3"
                      alt="new"
                    />
                    <p className="et">Dallas Arboretum and Botanical Gardens</p>
                    <p className="el">8525 Garland Rd, Dallas, TX 75218</p>
                    <p className="ep">$12.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=4"
                      alt="new"
                    />{" "}
                    <p className="et">Harry Bertoia </p>
                    <p className="el">2001 Flora St, Dallas, TX 75201</p>
                    <p className="ep">$3.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=5"
                      alt="new"
                    />
                    <p className="et">Dallas World Aquarium </p>
                    <p className="el">1801 N Griffin St, Dallas, TX 75202</p>
                    <p className="ep">$14.95 +</p>
                  </div>
                </div>
              </Slider>
            </p1>
            <p2 className="p">
              <Row className="watchedheader">
                <div class="shadowsharp"> Based on Events Watched</div>
              </Row>
              <Slider className="sliderrow2">
                <div class="container">
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=6"
                      alt="new"
                    />
                    <p className="et">
                      The Texas Theatre: Virtual Screening Room
                    </p>
                    <p className="el">231 W Jefferson Blvd, Dallas, TX 75208</p>
                    <p className="ep">$12.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=7"
                      alt="new"
                    />
                    <p className="et">International Museum of Cultures </p>
                    <p className="el7">
                      411 U.S. Highway 67 Southbound Frontage Rd. Duncanville,
                      TX 75137
                    </p>
                    <p className="ep">$5.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=8"
                      alt="new"
                    />
                    <p className="et">
                      Sid Richardson Museum - Free Guided Tour
                    </p>
                    <p className="el">309 Main St, Fort Worth, TX 76102</p>
                    <p className="ep">Free</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=9"
                      alt="new"
                    />
                    <p className="et">Dallas World Aquarium </p>
                    <p className="el">1801 N Griffin St, Dallas, TX 75202</p>
                    <p className="ep">$14.95 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=10"
                      alt="new"
                    />
                    <p className="et">Frontiers of Flight Museum </p>
                    <p className="el">6911 Lemmon Ave, Dallas, TX 75209</p>
                    <p className="ep">$10.00 +</p>
                  </div>
                </div>
              </Slider>
            </p2>
            <p3 className="p">
              <Row className="similarheader">
                <div class="shadowsharp"> Similar users liked..</div>
              </Row>
              <Slider className="sliderrow3">
                <div class="container">
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=19"
                      alt="new"
                    />
                    <p className="et">
                      Heard Natural Science Museum & Wildlife Sanctuary
                    </p>
                    <p className="el">1 Nature Pl, McKinney, TX 75069</p>
                    <p className="ep">$7.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=12"
                      alt="new"
                    />{" "}
                     <p className="et">Harry Bertoia </p>
                    <p className="el">2001 Flora St, Dallas, TX 75201</p>
                    <p className="ep">$3.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=17"
                      alt="new"
                    />{" "}
                    <p className="et">Dallas Arboretum and Botanical Gardens</p>
                    <p className="el">8525 Garland Rd, Dallas, TX 75218</p>
                    <p className="ep">$12.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=14"
                      alt="new"
                    />{" "}
                    <p className="et">International Museum of Cultures </p>
                    <p className="el7">
                      411 U.S. Highway 67 Southbound Frontage Rd. Duncanville,
                      TX 75137
                    </p>
                    <p className="ep">$5.00 +</p>
                  </div>
                  <div class="item">
                    <img
                      className="img"
                      src="https://source.unsplash.com/random/150x150?sig=16"
                      alt="new"
                    />{" "}
                   <p className="et">International Museum of Cultures </p>
                    <p className="el7">
                      411 U.S. Highway 67 Southbound Frontage Rd. Duncanville,
                      TX 75137
                    </p>
                    <p className="ep">$5.00 +</p>
                  </div>
                </div>
              </Slider>
            </p3>
          </Col>
          <Col className="column2" lg={3}>
            <h1 className="filterheader"> Event/Price Filters </h1>
            <p1>
              <Row className="dropdownrow">
                <Form inline>
                  <div>
                    <Form.Label
                      className="dropdown"
                      htmlFor="inlineFormCustomSelectPref"
                    >
                      <p className="preferencelabel">Preference</p>
                    </Form.Label>
                  </div>

                  <Form.Control
                    as="select"
                    className="dropdownmenu"
                    id="inlineFormCustomSelectPref"
                    custom
                  >
                    <option value="0">Choose...</option>
                    <option value="1"> Classics </option>
                    <option value="2"> Concerts </option>
                    <option value="3">History </option>
                    <option value="4">Music </option>
                    <option value="5">Readings </option>
                    <option value="6">Rhythm </option>
                    <option value="7">Singing </option>
                    <option value="8">Symphony </option>
                    <option value="9">Visuals </option>
                  </Form.Control>
                  <Row>
                    <Form.Check
                      type="checkbox"
                      className="checkboxpreference"
                      id="customControlInline"
                      label="Remember My Preference"
                      custom
                    />
                  </Row>
                  <Row>
                    <p>
                      <Button type="submit" className="submitbutton">
                        Submit
                      </Button>
                    </p>
                  </Row>
                </Form>
              </Row>
              <Row className="citycheckbox">
                <Form.Check
                  type="checkbox"
                  className="citycheckaddi"
                  label="Addison"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckallen"
                  label="Allen"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckdallas"
                  label="Dallas"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckdent"
                  label="Denton"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckdunc"
                  label="Duncanville"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckftw"
                  label="Fort Worth"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckfris"
                  label="Frisco"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckmcki"
                  label="Mckinney"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckrich"
                  label="Richardson"
                />
                <Form.Check
                  type="checkbox"
                  className="citycheckwaco"
                  label="Waco"
                />
              </Row>
              <Row className="pricecheckbox">
                <Form.Check
                  type="checkbox"
                  className="pricecheckfree"
                  label="Free"
                />
                <Form.Check
                  type="checkbox"
                  className="pricecheck1-100"
                  label="$1 - $100"
                />
                <Form.Check
                  type="checkbox"
                  className="pricecheck100-200"
                  label="$100 - $250"
                />
                <Form.Check
                  type="checkbox"
                  className="pricecheck250above250"
                  label="$250 - above $250"
                />
              </Row>
              <div>
                <button className="groupbutton">Groups</button>
              </div>
              <div>
                <Row className="drumprofilerow">
                  <Col>
                    <img alt="drums" className="drumspic" src={drums} />
                  </Col>
                  <Col>
                    <div class="boxed" className="drumbox">
                      {" "}
                      Band Party Group
                    </div>
                  </Col>
                </Row>
              </div>
              <div>
                <Row className="fluteprofilerow">
                  <Col>
                    <img alt="flute" className="flutepic" src={flute} />
                  </Col>
                  <Col>
                    <div class="boxed" className="flutebox">
                      {" "}
                      Classical Group
                    </div>
                  </Col>
                </Row>
              </div>
            </p1>
          </Col>
        </Row>
      </div>
    </Container>
  );
}

export default Home;
