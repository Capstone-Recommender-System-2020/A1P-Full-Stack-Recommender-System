import { useState, useEffect } from "react";

const useSliding = (countElements) => {
  const [containerWidth] = useState(0);
  const [distance, setDistance] = useState(0);
  const [totalInViewport] = useState(0);
  const [viewed, setViewed] = useState(0);

  useEffect(() => {
    const handlePrev = () => {
      setViewed(viewed - totalInViewport);
      setDistance(distance + containerWidth);
    };

    const handleNext = () => {
      setViewed(viewed + totalInViewport);
      setDistance(distance - containerWidth);
    };

    const hasPrev = distance < 0;
    const hasNext = viewed + totalInViewport < countElements;

    return {
      handlePrev,
      handleNext,
      hasPrev,
      hasNext,
    };
  });
};

export default useSliding;
