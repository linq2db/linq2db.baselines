-- SQLite.MS SQLite
SELECT
	Coalesce([e].[Name], '') || ', ' || Coalesce([e].[Name2], '') || ' (' || Coalesce([e].[Name], '') || '/' || Coalesce([e].[Name2], '') || ')'
FROM
	[StringCalcEntity] [e]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Name2],
	[t1].[Num]
FROM
	[StringCalcEntity] [t1]

