import React from "react";
import IconArrowDown from "./IconArrowDown";
import "./ShowDetailButton.scss";

const ShowDetailsButton = ({ onClick }) => (
  <button onClick={onClick} className="show-details-button">
    <span>
      <IconArrowDown />
    </span>
  </button>
);

export default ShowDetailsButton;
