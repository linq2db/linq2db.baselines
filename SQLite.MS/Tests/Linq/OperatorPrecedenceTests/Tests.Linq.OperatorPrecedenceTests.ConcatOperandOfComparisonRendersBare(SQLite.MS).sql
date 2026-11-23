-- SQLite.MS SQLite
DECLARE @value NVarChar(1) -- String
SET     @value = 'x'

SELECT
	[r].[Id]
FROM
	[ConcatRow] [r]
WHERE
	Coalesce([r].[S], '') || 'x' = @value

