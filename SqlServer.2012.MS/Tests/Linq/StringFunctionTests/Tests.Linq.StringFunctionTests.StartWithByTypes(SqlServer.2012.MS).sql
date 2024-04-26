BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[StringTypesTable]', N'U') IS NOT NULL)
	DROP TABLE [StringTypesTable]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[StringTypesTable]', N'U') IS NULL)
	CREATE TABLE [StringTypesTable]
	(
		[Id]             Int          NOT NULL,
		[CharColumn]     Char(50)         NULL,
		[NCharColumn]    NChar(50)        NULL,
		[VarCharColumn]  VarChar(50)      NULL,
		[NVarCharColumn] NVarChar(50)     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

INSERT INTO [StringTypesTable]
(
	[Id],
	[CharColumn],
	[NCharColumn],
	[VarCharColumn],
	[NVarCharColumn]
)
VALUES
(1,'someString',N'someString','someString',N'someString')

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @str NVarChar(4000) -- String
SET     @str = N'some%'
DECLARE @str_1 NVarChar(4000) -- String
SET     @str_1 = N'some%'
DECLARE @str_2 NVarChar(4000) -- String
SET     @str_2 = N'some%'
DECLARE @str_3 NVarChar(4000) -- String
SET     @str_3 = N'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE @str ESCAPE N'~' AND
	[t].[NCharColumn] LIKE @str_1 ESCAPE N'~' AND
	[t].[VarCharColumn] LIKE @str_2 ESCAPE N'~' AND
	[t].[NVarCharColumn] LIKE @str_3 ESCAPE N'~'

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[StringTypesTable]', N'U') IS NOT NULL)
	DROP TABLE [StringTypesTable]

