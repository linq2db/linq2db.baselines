-- SQLite.MS SQLite
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	[p].[Conv] || [p].[Title] = @bound

-- SQLite.MS SQLite
DECLARE @bound VarChar(5) -- AnsiString
SET     @bound = 'x:c1T'

SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	@bound = [p].[Conv] || [p].[Title]

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[ConvertedConcatTitleRow] [p]
WHERE
	[p].[Conv] || [p].[Title] IN ('x:c1T')

