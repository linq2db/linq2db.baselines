-- SQLite.Classic SQLite
SELECT
	[r].[Id],
	CASE
		WHEN [r].[A] = [r].[B] THEN 1
		ELSE 0
	END
FROM
	[NullableFlagTable] [r]
ORDER BY
	[r].[Id]

