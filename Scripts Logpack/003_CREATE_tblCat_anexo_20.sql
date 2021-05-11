SET NOCOUNT ON 
/***************************************************************************************** 
* LOGPACK PAQUETERIA													                 *
* Sistema: LOGPACK																         *
* Tabla: tblCat_anexo_20														         *
*																					  	 *
* -------------------------------------------------------------------------------------- * 
*																						 * 
* Versi?n   Fecha        Usuario             Descripci?n								 *		
* -------   ----------   ------------------ -------------------------------------------- * 
*  1.0      10/05/2021   Ismael Gonzalez     Creaci?n del script					     *
******************************************************************************************/
 IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'tblCat_anexo_20') 
 BEGIN
	 CREATE TABLE [dbo].[tblCat_anexo_20]
		(	
		[id_anexo] [int] NOT NULL,
		[concepto] [varchar](20) NOT NULL,
		[codigo_aplicacion] [varchar](50) NOT NULL,
		[aplicacion] [varchar](30) NOT NULL,
		)  

 PRINT 'Tabla tblCat_anexo_20 creada' 
 END
 ELSE  
	PRINT 'La Tabla tblCat_anexo_20 ya existe' 
 GO 


 /*Creaci?n de la llave primaria*/
 IF EXISTS (
				SELECT 1
				FROM sys.objects
				WHERE name = 'tblCat_anexo_20'
				)
BEGIN 
	ALTER TABLE [dbo].[tblCat_anexo_20]
	ADD CONSTRAINT PK_tblCat_anexo_20_id_anexo
	PRIMARY KEY (id_anexo)
	PRINT 'Se agreg? la llave primaria a tblCat_anexo_20'
END
