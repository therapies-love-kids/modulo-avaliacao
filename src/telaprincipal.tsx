import * as React from "react";

const Component = () => {
  return (
    <div className="h-screen w-screen">
      <div className="w-screen h-20 flex items-center">
        <div className="w-1/5 h-full flex items-center justify-center">
            DRAWNER
        </div>
        <div className="w-4/5 h-full flex items-center justify-center">
            BARRA DE PESQUISA
        </div>
      </div>
      <div className="w-screen h-full flex items-center justify-center">
        <div className="w-1/3 h-full">
            <div className="w-full h-1/2 flex items-center justify-center">
            </div>
            <div className="w-full h-1/2 flex items-center justify-center">
                CALENDÁRIO
            </div>
        </div>
        <div className="w-2/3 h-full flex items-center justify-center">
            GUIA DA DIREITA
        </div>
      </div>
    </div>
  );
};

export default Component;
