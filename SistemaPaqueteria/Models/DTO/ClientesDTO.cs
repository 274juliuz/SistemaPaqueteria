using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SistemaPaqueteria.Models.DTO
{
    public class ClientesDTO
    {
        public int iIdCliente { get; set; }

        public string cRfc { get; set; }

        public string cMoralFisica { get; set; }

        public string cNombres { get; set; }

        public string cApellidos { get; set; }

        public int iClienteFacturazion { get; set; }

        public int iTipoCliente { get; set; }

        public string cCorreoElectronico { get; set; }

        public string cDireccion { get; set; }

        public decimal nTelefono { get; set; }

        public int iCp { get; set; }

        public string cColonia { get; set; }

        public string cUsuario { get; set; }

        public string cContraseña { get; set; }

        public int iMetodoPagoEspecial { get; set; }
    }
}