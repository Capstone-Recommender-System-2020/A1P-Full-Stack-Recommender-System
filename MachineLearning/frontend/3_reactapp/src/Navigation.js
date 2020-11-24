import React from "react";

import { NavLink } from "react-router-dom";

const Navigation = () => {
  return (
    <div className="nav">
      <NavLink to="/">Home</NavLink>
      <div>
        <NavLink to="/arborpage">Arbor Event Page</NavLink>
      </div>
    </div>
  );
};

export default Navigation;
