import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import App from "./App";
import menu from "./menu";
import Guiche from "./Guiche";
export default function Root() {
  const App: React.FC = () => {
    return (
      <App />
    )
  }
  return (
    <Router>
      <Routes>
        <Route path="/" element={<App />} />
        <Route path="/menu" element={<menu />} />
        <Route path="/Guiche" element={<Guiche />} />
      </Routes>
    </Router>
  );
}
