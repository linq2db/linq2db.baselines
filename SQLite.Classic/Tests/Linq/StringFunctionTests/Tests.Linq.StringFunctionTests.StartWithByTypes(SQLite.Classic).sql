-- SQLite.Classic SQLite
DECLARE @str Char(5) -- AnsiStringFixedLength
SET     @str = 'some%'
DECLARE @str_1 NChar(5) -- StringFixedLength
SET     @str_1 = 'some%'
DECLARE @str_2 VarChar(5) -- AnsiString
SET     @str_2 = 'some%'
DECLARE @str_3 NVarChar(5) -- String
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

