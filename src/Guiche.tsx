import React from "react";

export default function Guiche() {
  return (
    <div className="h-screen w-screen flex flex-col gap-2 p-4 bg-base-200">
      <div className="h-[85%] flex gap-2">
        <div className="w-[20%] h-full">
          <img src="teste.png" alt="Guiche" className="h-full w-full" />
        </div>
        <div className="w-[80%] h-full flex flex-col gap-2">
          <div className="flex h-[50%]  rounded-3xl shadow-md bg-base-100">
            <div className=" m-auto ">
              <p className="text-9xl">
                SENHA: <b>9120</b>
              </p>
              <p className="text-9xl">
                CONSULTÓRIO: <b>04</b>
              </p>
            </div>
          </div>
          <div className="h-[50%] grid grid-cols-2 gap-4">
            <div className="shadow-md rounded-3xl p-6 bg-base-100 w-full">
              <p className="text-5xl">
                SENHA: <b>9120</b>
              </p>
              <p className="text-5xl">
                CONSULTÓRIO: <b>04</b>
              </p>
            </div>
            <div className="shadow-md rounded-3xl p-6 bg-base-100 w-full">
              <p className="text-5xl">
                SENHA: <b>9120</b>
              </p>
              <p className="text-5xl">
                CONSULTÓRIO: <b>04</b>
              </p>
            </div>
            <div className="shadow-md rounded-3xl p-6 bg-base-100 w-full">
              <p className="text-5xl">
                SENHA: <b>9120</b>
              </p>
              <p className="text-5xl">
                CONSULTÓRIO: <b>04</b>
              </p>
            </div>
            <div className="shadow-md rounded-3xl p-6 bg-base-100 w-full">
              <p className="text-5xl">
                SENHA: <b>9120</b>
              </p>
              <p className="text-5xl">
                CONSULTÓRIO: <b>04</b>
              </p>
            </div>
          </div>
        </div>
      </div>
      <div className="h-[15%] gap-2 hero">
        <p className="text-4xl">Anápolis 26° Dia 06/02/2025</p>
      </div>
    </div>
  );
}
