import React, { useState } from "react";
import cx from "classnames";
import SliderContext from "./context";
import SlideButton from "./SlideButton";
import SliderWrapper from "./SlideWrapper";
import useSliding from "./Sliding";
import "./Slider.scss";
import "./SlideButton.scss";

const Slider = ({ children, activeSlide }) => {
  const [currentSlide, setCurrentSlide] = useState(activeSlide);
  const {
    handlePrev,
    handleNext,
    slideProps,
    containerRef,
    hasNext,
    hasPrev,
  } = useSliding(React.Children.count(children));

  const handleSelect = (event) => {
    setCurrentSlide(event);
  };

  const handleClose = () => {
    setCurrentSlide(null);
  };

  const contextValue = {
    onSelectSlide: handleSelect,
    onCloseSlide: handleClose,
    currentSlide,
  };

  return (
    <SliderContext.Provider value={contextValue}>
      <SliderWrapper>
        <div className={cx("slider", { "slider--open": currentSlide != null })}>
          <div ref={containerRef} className="slider__container" {...slideProps}>
            {children}
          </div>
        </div>
        {hasPrev && (
          <SlideButton
            className="slide-button"
            onClick={handlePrev}
            type="prev"
          />
        )}
        {hasNext && (
          <SlideButton
            className="slide-button"
            onClick={handleNext}
            type="next"
          />
        )}
      </SliderWrapper>
    </SliderContext.Provider>
  );
};

export default Slider;
