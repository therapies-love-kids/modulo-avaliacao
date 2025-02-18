import * as React from "react";
import Calendar from "react-calendar";

export default function telaprincipal() {
  return (
    <div className="h-screen w-screen">
      <div className="w-screen h-[10%] flex items-center p-2">
        <div className="w-[5%] h-full flex items-center justify-center rounded-full shadow-xl">
          <input id="my-drawer" type="checkbox" className="drawer-toggle" />
          <div className="drawer-content">
            <label
              htmlFor="my-drawer"
              className="btn btn-primary drawer-button"
            >
              Open drawer
            </label>
          </div>
          <div className="drawer-side">
            <label
              htmlFor="my-drawer"
              aria-label="close sidebar"
              className="drawer-overlay"
            ></label>
            <ul className="menu bg-base-200 text-base-content min-h-full w-80 p-4">
              <li>
                <a>Sidebar Item 1</a>
              </li>
              <li>
                <a>Sidebar Item 2</a>
              </li>
            </ul>
          </div>
        </div>
        <div className="w-[95%] h-full flex items-center justify-center">
          <input
            type="text"
            placeholder="Pesquisar"
            className="input input-bordered w-full max-w-xs"
          />
        </div>
      </div>
      <div className="w-screen h-[90%] flex items-center justify-center p-2">
        <div className="w-1/3 h-full">
          <div className="w-full h-1/2">
            <div className="overflow-x-auto">
              <table className="table">
                {/* head */}
                <thead>
                  <tr>
                    <th></th>
                    <th>Name</th>
                    <th>Job</th>
                    <th>Favorite Color</th>
                  </tr>
                </thead>
                <tbody>
                  {/* row 1 */}
                  <tr>
                    <th>1</th>
                    <td>Cy Ganderton</td>
                    <td>Quality Control Specialist</td>
                    <td>Blue</td>
                  </tr>
                  {/* row 2 */}
                  <tr>
                    <th>2</th>
                    <td>Hart Hagerty</td>
                    <td>Desktop Support Technician</td>
                    <td>Purple</td>
                  </tr>
                  {/* row 3 */}
                  <tr>
                    <th>3</th>
                    <td>Brice Swyre</td>
                    <td>Tax Accountant</td>
                    <td>Red</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div className="w-full h-1/2 flex">
            <Calendar />
          </div>
        </div>
        <div className="w-2/3 h-full flex items-center justify-center">
          GUIA DA DIREITA
        </div>
      </div>
    </div>
  );
}
