BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StringTypesTable') IS NOT NULL)
	DROP TABLE [StringTypesTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StringTypesTable') IS NULL)
	EXECUTE('
		CREATE TABLE [StringTypesTable]
		(
			[Id]             Int          NOT NULL,
			[CharColumn]     Char(50)         NULL,
			[NCharColumn]    NChar(50)        NULL,
			[VarCharColumn]  VarChar(50)      NULL,
			[NVarCharColumn] NVarChar(50)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [StringTypesTable]
(
	[Id],
	[CharColumn],
	[NCharColumn],
	[VarCharColumn],
	[NVarCharColumn]
)
SELECT 1,'someString','someString','someString','someString'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @str_4 Char(5) -- AnsiStringFixedLength
SET     @str_4 = 'some%'
DECLARE @str_5 UniChar(5) -- StringFixedLength
SET     @str_5 = 'some%'
DECLARE @str_6 VarChar(5) -- AnsiString
SET     @str_6 = 'some%'
DECLARE @str_7 UniVarChar(5) -- String
SET     @str_7 = 'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE @str_4 ESCAPE '~' AND
	[t].[NCharColumn] LIKE @str_5 ESCAPE '~' AND
	[t].[VarCharColumn] LIKE @str_6 ESCAPE '~' AND
	[t].[NVarCharColumn] LIKE @str_7 ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StringTypesTable') IS NOT NULL)
	DROP TABLE [StringTypesTable]

