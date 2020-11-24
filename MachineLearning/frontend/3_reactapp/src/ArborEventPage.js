import React from "react";
import "./Home.css";
import "./ArborEventPage.css";
import ArborPic from "./ArborPic";
import { Container, Row, Col } from "react-bootstrap";
import Slider from "./components/Slider";
import Mappic from "./Map";

const ArborEventPage = () => {
  return (
    <Container fluid className="contarbor">
      <Row className="arborheader">
        <h1>
          Dallas Arboretum and Botanical Gardens by Dallas Arboretum and
          Botanical Gardens
        </h1>
      </Row>
      <Row className="arborpicrow">
        <Col className="arborcol">
          <ArborPic className="arborpic"></ArborPic>
        </Col>
        <Col className="descol">
          <p1>
            We are the premier place to visit in the Dallas area, and one of the
            top botanical gardens in America. A Tasteful Place This 3.5-acre,
            ornamental garden, pavilion and kitchen is inspired by the movement
            toward growing and eating fresh, sustainable, locally-grown food.
            Enjoy three free daily tastings made with seasonal produce, cooking
            demos and more.
          </p1>
          <div>
            <Container className="schedule">
              <p2>
                <div>
                  <div>Saturday - 09:00 AM - 05:00 PM</div>
                  <div>Sunday - 09:00 AM - 05:00 PM</div>
                  <div>Monday - 09:00 AM - 05:00 PM</div>
                  <div>Tuesday - 09:00 AM - 05:00 PM</div>
                  <div>Wednesday - 09:00 AM - 05:00 PM</div>
                  <div>Thursday - 09:00 AM - 05:00 PM</div>
                  <div>Friday - 09:00 AM - 05:00 PM</div>
                </div>
              </p2>
            </Container>
            <div>
              <Row className="map">
                <div>
                  <Mappic></Mappic>
                </div>
              </Row>
            </div>
          </div>
        </Col>
      </Row>
      <Row>
        <Row className="sugheaderrow">
          <div class="shadowsharp">
            <h2>Suggested / Related Events</h2>{" "}
          </div>
        </Row>
        <Slider className="arborsliderrow">
          <div class="containerar">
            <div class="item ar">
              <img
                className="img"
                src="https://source.unsplash.com/random/210x210?sig=1"
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
                src="https://source.unsplash.com/random/210x210?sig=2"
                alt="new"
              />
              <p className="et">Dallas World Aquarium </p>
              <p className="el">1801 N Griffin St, Dallas, TX 75202</p>
              <p className="ep">$14.95 +</p>
            </div>
            <div class="item">
              <img
                className="img"
                src="https://source.unsplash.com/random/210x210?sig=3"
                alt="new"
              />
              <p className="et">Sid Richardson Museum - Free Guided Tour</p>
              <p className="el">309 Main St, Fort Worth, TX 76102</p>
              <p className="ep">Free</p>
            </div>
            <div class="item">
              <img
                className="img"
                src="https://source.unsplash.com/random/210x210?sig=4"
                alt="new"
              />
              <p className="et">International Museum of Cultures </p>
              <p className="el7">
                411 U.S. Highway 67 Southbound Frontage Rd. Duncanville, TX
                75137
              </p>
              <p className="ep">$5.00 +</p>
            </div>
            <div class="item">
              <img
                className="img"
                src="https://source.unsplash.com/random/210x210?sig=5"
                alt="new"
              />
              <p className="et">The Texas Theatre: Virtual Screening Room</p>
              <p className="el">231 W Jefferson Blvd, Dallas, TX 75208</p>
              <p className="ep">$12.00 +</p>
            </div>
          </div>
        </Slider>
      </Row>
    </Container>
  );
};

export default ArborEventPage;
