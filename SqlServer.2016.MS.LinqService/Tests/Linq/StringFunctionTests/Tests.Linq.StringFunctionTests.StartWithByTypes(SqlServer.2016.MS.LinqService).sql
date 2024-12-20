﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [StringTypesTable]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CharColumn Char(10) -- AnsiStringFixedLength
SET     @CharColumn = N'someString'
DECLARE @NCharColumn NChar(10) -- StringFixedLength
SET     @NCharColumn = N'someString'
DECLARE @VarCharColumn VarChar(50) -- AnsiString
SET     @VarCharColumn = N'someString'
DECLARE @NVarCharColumn NVarChar(50) -- String
SET     @NVarCharColumn = N'someString'

INSERT INTO [StringTypesTable]
(
	[Id],
	[CharColumn],
	[NCharColumn],
	[VarCharColumn],
	[NVarCharColumn]
)
VALUES
(
	@Id,
	@CharColumn,
	@NCharColumn,
	@VarCharColumn,
	@NVarCharColumn
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [StringTypesTable]

