//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SistemaPaqueteria.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Clientes
    {
        public int iIdCliente { get; set; }
        public string cRfc { get; set; }
        public string cMoralFisica { get; set; }
        public string cNombres { get; set; }
        public string cApellidos { get; set; }
        public int iClienteFacturacion { get; set; }
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
