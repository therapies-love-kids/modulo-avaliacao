import React, { useEffect, useState } from "react";
import "react-calendar/dist/Calendar.css";

export default function App() {
  const [count, setCount] = useState(0);

//   useEffect(() => {
//     setCount(26);
//   }, []);

  return (
    <>
      <div id="root">
        <p>Count: {count}</p>
        <button id="botao" className="btn btn-primary" onClick={() => setCount(document.getElementById("botao")!.textContent)}>
          26
        </button>
      </div>
    </>
  );
}
