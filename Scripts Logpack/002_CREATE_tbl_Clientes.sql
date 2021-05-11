SET NOCOUNT ON 
/***************************************************************************************** 
* LOGPACK PAQUETERIA													                 *
* Sistema: LOGPACK																         *
* Tabla: tbl_Clientes													             *
*																					  	 *
* -------------------------------------------------------------------------------------- * 
*																						 * 
* Versi?n   Fecha        Usuario             Descripci?n								 *		
* -------   ----------   ------------------ -------------------------------------------- * 
*  1.0      10/05/2021   Ismael Gonzalez     Creaci?n del script					     *
******************************************************************************************/
 IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'tbl_Clientes') 
 BEGIN
	 CREATE TABLE [dbo].[tbl_Clientes]
		(	
		[iIdCliente] [int] NOT NULL,
		[cRfc] [varchar](13) NOT NULL,
		[cMoralFisica] [varchar](10) NOT NULL,
		[cNombres] [varchar](30) NOT NULL,
		[cApellidos] [varchar](30) NOT NULL,
		[iClienteFacturacion] [int] NOT NULL,
		[iTipoCliente] [int] NOT NULL,
		[cCorreoElectronico] [varchar](50) NOT NULL,
		[cDireccion] [varchar](100) NOT NULL,
		[nTelefono] [numeric](18, 0) NOT NULL,
		[iCp] [int] NOT NULL,
		[cColonia] [varchar](20) NOT NULL,
		[cUsuario] [varchar](15) NOT NULL,
		[cContraseña] [varchar](20) NULL,
		[iMetodoPagoEspecial] [int] NOT NULL,
		)  

 PRINT 'Tabla tbl_Clientes creada' 
 END
 ELSE  
	PRINT 'La Tabla tbl_Clientes ya existe' 
 GO 


 /*Creaci?n de la llave primaria*/
 IF EXISTS (
				SELECT 1
				FROM sys.objects
				WHERE name = 'tbl_Clientes'
				)
BEGIN 
	ALTER TABLE [dbo].[tbl_Clientes]
	ADD CONSTRAINT PK_tbl_Clientes_iIdCliente
	PRIMARY KEY (iIdCliente)
	PRINT 'Se agreg? la llave primaria a tbl_Clientes'
END
