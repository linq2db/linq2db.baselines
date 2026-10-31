-- SQLite.MS SQLite
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	CAST([t].[Code] AS NVarChar(40)) LIKE @Code

-- SQLite.MS SQLite
DECLARE @bound VarChar(3) -- AnsiString
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeTable] [t]
WHERE
	CAST([t].[Code] AS NVarChar(40)) = @bound

