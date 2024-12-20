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
DECLARE @str Char(5) -- AnsiStringFixedLength
SET     @str = 'some%'
DECLARE @str_1 UniChar(5) -- StringFixedLength
SET     @str_1 = 'some%'
DECLARE @str_2 VarChar(5) -- AnsiString
SET     @str_2 = 'some%'
DECLARE @str_3 UniVarChar(5) -- String
SET     @str_3 = 'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE @str ESCAPE '~' AND
	[t].[NCharColumn] LIKE @str_1 ESCAPE '~' AND
	[t].[VarCharColumn] LIKE @str_2 ESCAPE '~' AND
	[t].[NVarCharColumn] LIKE @str_3 ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'StringTypesTable') IS NOT NULL)
	DROP TABLE [StringTypesTable]

