-- SQLite.MS SQLite
DECLARE @dash NVarChar(1) -- String
SET     @dash = '-'

SELECT
	[p].[Conv] || '|' || Coalesce(@dash, '')
FROM
	[ConvertedUnicodeConcatRow] [p]
LIMIT 2

