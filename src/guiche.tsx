import React from "react";

function SenhaAtual() {
  const senhaAtual = 15932;
  const ultimasSenhas = [
    { numero: 15931, consultorio: 42 },
    { numero: 15930, consultorio: 43 },
    { numero: 15929, consultorio: 43 },
    { numero: 15928, consultorio: 42 },
  ];
  const local = "Anápolis";
  const temperatura = "27°C";
  const horario = "14:30";
  const dia = "13/02";
  const ano = "Segunda-feira";

  return (
    <div className="h-screen">
      <div className="bg-base-50 flex">
        <div className="w-1/4">
          <img src="teste.png" alt="sem titulo" className="w-full" />
        </div>
        <div className="w-3/4 card bg-base-100 shadow-xl">
          <div className="card-body">
            <h2 className="card-title text-8xl  font-bold">
              Senha N°: {senhaAtual}
            </h2>
            <p className="text-8xl">Consultório N° 43</p>
            <p className="text-8xl">14:00</p>
            <div className="grid grid-cols-2 gap-4 mt-8">
              {ultimasSenhas.map((senha, index) => (
                <div key={index} className="card bg-base-200 shadow-sm">
                  <div className="card-body p-4">
                    <p className="text-xl">
                      {senha.numero} N°: {senha.consultorio}
                    </p>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </div>
        <div className="fixed bottom-0 w-full bg-base-100 p-4 flex justify-between items-center">
          <div className="flex items-center">
            <div className="ml-4">
              <span className="text-xl font-bold">LOVE KIDS</span>
            </div>
          </div>
          <div>
            <span>
              {local} {temperatura} {horario} {dia} {ano}
            </span>
          </div>
        </div>
      </div>
    </div>
  );
}

export default SenhaAtual;
