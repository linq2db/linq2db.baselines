-- SQLite.Classic SQLite
SELECT
	[r].[Id],
	CASE
		WHEN [r].[C] IS NULL THEN [r].[Flag]
		WHEN [r].[A] IS NULL THEN 1
		ELSE [r].[Flag]
	END
FROM
	[NullableFlagTable] [r]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[A],
	[t1].[B],
	[t1].[C],
	[t1].[Flag]
FROM
	[NullableFlagTable] [t1]

