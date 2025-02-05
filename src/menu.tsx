import React, { useState } from 'react';
import Calendar from 'react-calendar';
import 'react-calendar/dist/Calendar.css';

//TODO Fazer um drawer para navegação nos diferentes menus, reformular a página.

function App() {
  const [pacienteAtual, setPacienteAtual] = useState('Fulano da silva sauro');
  const [filaPacientes, setFilaPacientes] = useState([
    'Maria Silva',
'José Santos',
'Ana Pereira',
'João Oliveira',
'Mariana Costa',
'Pedro Almeida',
'Sofia Rodrigues',
'António Martins',
'Laura Gonçalves',
'Carlos Fernandes',
'Beatriz Sousa',
'Miguel Andrade',
'Inês Ribeiro',
'Francisco Cardoso',
'Carolina Ferreira',
'Vasco Pinto',
'Marta Cunha',
'Diogo Silva',
'Sara Barbosa',
'Rafael Castro',
'Clara Santos',
'Tiago Oliveira',
'Alice Pereira',
'André Almeida',
'Daniela Costa',
'Ricardo Rodrigues',
'Joana Martins',
'Filipe Gonçalves',
'Matilde Fernandes',
'Gustavo Sousa',
'Erica Andrade',
'Luís Ribeiro',
'Catarina Cardoso',
'Rodrigo Ferreira',
'Mariana Pinto',
'Eduardo Cunha',
'Sofia Silva',
'Tomás Barbosa',
'Inês Castro',
'Beatriz Santos',
'Afonso Oliveira',
'Leonor Pereira',
'Duarte Almeida',
'Madalena Costa',
'Salvador Rodrigues',
'Carolina Martins',
'Vicente Gonçalves',
'Matilde Fernandes',
'Lourenço Sousa',
'Iris Andrade',
'Dinis Ribeiro',
'Benedita Cardoso',
'Gonçalo Ferreira',
'Clara Pinto',
'Eduarda Cunha',
  ]);
  const [date, setDate] = useState(new Date());

  const proximoPaciente = () => {
    if (filaPacientes.length > 0) {
      const proximo = filaPacientes.shift();
      setPacienteAtual(proximo);
      setFilaPacientes([...filaPacientes]);
    }
  };

  return (
      <div className="flex items-center justify-center h-screen">
        <div>
            <div className="flex items-center justify-center space-x-3 h-full">
              <h2 className="text-5xl font-bold">{pacienteAtual}</h2>
              <button className="btn btn-primary" onClick={proximoPaciente}>
              Proximo ->
            </button>
              <button className="btn btn-primary">Gerar Documento</button>
            </div>
          <div className="mt-8">
            <h3 className="text-2xl font-bold">Fila de Espera</h3>
            <div className="overflow-y-auto max-h-96">
              <table className="table w-full">
                <tbody>
                  {filaPacientes.map((paciente, index) => (
                    <tr key={index}>
                      <td>
                        <div className="flex items-center space-x-8">
                          <div>
                            {paciente}
                          </div>
                        </div>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div className="card w-max bg-base-100 shadow-xl ml-8">
          <div className="card-body">
            <h2 className="card-title">Calendário</h2>
            <Calendar
              onChange={setDate}
              value={date}
            />
          </div>
        </div>
      </div>
  );
}

export default App;