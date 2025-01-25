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

