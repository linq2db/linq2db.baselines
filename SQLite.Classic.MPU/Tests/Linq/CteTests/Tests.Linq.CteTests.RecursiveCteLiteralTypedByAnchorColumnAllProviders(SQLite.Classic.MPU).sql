-- SQLite.Classic.MPU SQLite.Classic SQLite
WITH [cte] ([Id], [Str])
AS
(
	SELECT
		[p].[Id],
		[p].[Str]
	FROM
		[CteLiteralTypingTable] [p]
	UNION ALL
	SELECT
		[t1].[Id],
		CAST('Str' AS VarChar)
	FROM
		[cte] [t1],
		[CteLiteralTypingTable] [r]
	WHERE
		[t1].[Id] = [r].[Id] + 1
)
SELECT
	[t2].[Id],
	[t2].[Str]
FROM
	[cte] [t2]

