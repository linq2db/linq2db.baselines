-- SQLite.MS SQLite
DECLARE @Code VarChar(4) -- AnsiString
SET     @Code = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') || Coalesce([t].[Title], '')) LIKE @Code

-- SQLite.MS SQLite
DECLARE @bound VarChar(4) -- AnsiString
SET     @bound = 'x:AT'

SELECT
	COUNT(*)
FROM
	[PrefixedCodeWithTitleTable] [t]
WHERE
	(Coalesce([t].[Code], '') || Coalesce([t].[Title], '')) = @bound

