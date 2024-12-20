﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [StringTypesTable]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019
DECLARE @str Char(5) -- AnsiStringFixedLength
SET     @str = N'some%'
DECLARE @str_1 NChar(5) -- StringFixedLength
SET     @str_1 = N'some%'
DECLARE @str_2 VarChar(50) -- AnsiString
SET     @str_2 = N'some%'
DECLARE @str_3 NVarChar(50) -- String
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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [StringTypesTable]

