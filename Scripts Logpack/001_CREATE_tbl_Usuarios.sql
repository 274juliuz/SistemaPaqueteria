SET NOCOUNT ON 
/***************************************************************************************** 
* LOGPACK PAQUETERIA													                 *
* Sistema: LOGPACK																         *
* Tabla: tbl_Usuarios														             *
*																					  	 *
* -------------------------------------------------------------------------------------- * 
*																						 * 
* Versi?n   Fecha        Usuario             Descripci?n								 *		
* -------   ----------   ------------------ -------------------------------------------- * 
*  1.0      10/05/2021   Ismael Gonzalez     Creaci?n del script					     *
******************************************************************************************/
 IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'tbl_Usuarios') 
 BEGIN
	 CREATE TABLE [dbo].[tbl_Usuarios]
		(	
		[iIdUsuario] [int] NOT NULL,
		[cUsuario] [varchar](15) NOT NULL,
		[cPassword] [varchar](20) NOT NULL,
		[cNombre] [varchar](50) NOT NULL,
		[iNivel] [int] NOT NULL,
		[cSucursal] [varchar](20) NOT NULL,
		)  

 PRINT 'Tabla tbl_Usuarios creada' 
 END
 ELSE  
	PRINT 'La Tabla tbl_Usuarios ya existe' 
 GO 


 /*Creaci?n de la llave primaria*/
 IF EXISTS (
				SELECT 1
				FROM sys.objects
				WHERE name = 'tbl_Usuarios'
				)
BEGIN 
	ALTER TABLE [dbo].[tbl_Usuarios]
	ADD CONSTRAINT PK_tbl_Usuarios_iIdUsuario
	PRIMARY KEY (iIdUsuario)
	PRINT 'Se agreg? la llave primaria a tbl_Usuarios'
END
