-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @dash NVarChar(1) -- String
SET     @dash = '-'

SELECT
	[p].[Conv] || '|' || Coalesce(@dash, '')
FROM
	[ConvertedConcatRow] [p]
LIMIT 2

