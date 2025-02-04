export default function Inicio() {
  return (
    <div>
      <div className="navbar bg-base-300">
        <div className="navbar-start">
          <button className="btn btn-ghost text-xl">Test</button>
        </div>
        <div className="navbar-center">
          <ul className="menu menu-horizontal p-0">
            <li><a>Início</a></li>
            <li><a>Agendamentos</a></li>
            <li><a>Pacientes</a></li>
          </ul>
        </div>
        <div className="navbar-end">
          <a className="btn">Button</a>
        </div>
      </div>
    </div>
  )
}
