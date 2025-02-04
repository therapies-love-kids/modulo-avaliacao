import React, { useState, useEffect } from 'react';

export default function Guiche() {
  const senha = "ANA05"; // Example value for the main senha
  const sala = "Consultório 03"; // Example value for the main sala

  // Arrays for the last three senhas and salas
  const senhas = ["ANA06", "ANA07", "ANA08"];
  const salas = ["Consultório 04", "Consultório 05", "Consultório 06"];

  const [currentDateTime, setCurrentDateTime] = useState(new Date().toLocaleString());

  useEffect(() => {
    const intervalId = setInterval(() => {
      setCurrentDateTime(new Date().toLocaleString());
    }, 1000); // Update every second

    return () => clearInterval(intervalId); // Cleanup on unmount
  }, []);

  return (
    <div className="h-screen p-5 bg-base-300 flex flex-col gap-4">
      <div>
        <p className="text-center text-4xl">{currentDateTime}</p>
      </div>
      <div className="card bg-base-100 shadow-xl flex items-center justify-center">
        <div className="card-body">
          <div className="text-center mt-4">
            <label className="text-xl">Senha</label>
            <p className="text-8xl font-bold">{senha}</p>
            <label className="text-xl">Sala</label>
            <p className="text-4xl font-bold">{sala}</p>
          </div>
        </div>
      </div>
      <div className="flex justify-center gap-4">
        {senhas.map((s, index) => (
          <div key={index} className="card bg-base-100 shadow-xl flex items-center justify-center">
            <div className="card-body">
              <div className="text-center mt-4">
                <label className="text-xl">Senha</label>
                <p className="text-8xl font-bold">{s}</p>
                <label className="text-xl">Sala</label>
                <p className="text-4xl font-bold">{salas[index]}</p>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
