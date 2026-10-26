-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	ROUND([r].[F], [r].[P]),
	[r].[F],
	CASE
		WHEN ([r].[F] * 2 = ROUND([r].[F] * 2, [r].[P]) OR [r].[F] IS NULL AND ([r].[F] IS NULL OR [r].[P] IS NULL)) AND ([r].[F] <> ROUND([r].[F], [r].[P]) OR [r].[F] IS NULL AND NOT ([r].[F] IS NULL OR [r].[P] IS NULL) OR [r].[F] IS NOT NULL AND [r].[P] IS NULL)
			THEN ROUND([r].[F] / 2, [r].[P]) * 2
		ELSE ROUND([r].[F], [r].[P])
	END
FROM
	[RoundValues] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[P]
FROM
	[RoundValues] [t1]

