BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [StringTypesTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019

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
-- SqlServer.Contained SqlServer.2019
DECLARE @str_4 Char(5) -- AnsiStringFixedLength
SET     @str_4 = N'some%'
DECLARE @str_5 NChar(5) -- StringFixedLength
SET     @str_5 = N'some%'
DECLARE @str_6 VarChar(50) -- AnsiString
SET     @str_6 = N'some%'
DECLARE @str_7 NVarChar(50) -- String
SET     @str_7 = N'some%'

SELECT
	[t].[Id],
	[t].[CharColumn],
	[t].[NCharColumn],
	[t].[VarCharColumn],
	[t].[NVarCharColumn]
FROM
	[StringTypesTable] [t]
WHERE
	[t].[CharColumn] LIKE @str_4 ESCAPE N'~' AND
	[t].[NCharColumn] LIKE @str_5 ESCAPE N'~' AND
	[t].[VarCharColumn] LIKE @str_6 ESCAPE N'~' AND
	[t].[NVarCharColumn] LIKE @str_7 ESCAPE N'~'

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [StringTypesTable]

