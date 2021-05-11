using SistemaPaqueteria.Models;
using SistemaPaqueteria.Models.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SistemaPaqueteria.Controllers.Principal
{
    public class PrincipalController : Controller
    {
        // GET: Principal
        public ActionResult Principal()
        {
            List<ClientesDTO> lst;
            using (LOGPACKEntities db = new LOGPACKEntities())
            {
                lst = (from d in db.tbl_Clientes
                           select new ClientesDTO
                           {
                               iIdCliente = d.iIdCliente,
                               cRfc = d.cRfc,
                               cMoralFisica = d.cMoralFisica,
                               cNombres = d.cNombres,
                               cApellidos = d.cApellidos,
                               iClienteFacturazion = d.iClienteFacturacion,
                               iTipoCliente = d.iTipoCliente,
                               cCorreoElectronico = d.cCorreoElectronico,
                               cDireccion = d.cDireccion,
                               nTelefono = d.nTelefono,
                               iCp = d.iCp,
                               cColonia = d.cColonia,
                               cUsuario = d.cUsuario,
                               cContraseña = d.cContraseña,
                               iMetodoPagoEspecial = d.iMetodoPagoEspecial
                           }).ToList();
            }

                return View(lst);
        }
    }
}