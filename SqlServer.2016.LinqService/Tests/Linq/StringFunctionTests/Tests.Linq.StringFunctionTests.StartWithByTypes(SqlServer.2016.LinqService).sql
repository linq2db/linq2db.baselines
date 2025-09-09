BeforeExecute
-- SqlServer.2016 (asynchronously)
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

