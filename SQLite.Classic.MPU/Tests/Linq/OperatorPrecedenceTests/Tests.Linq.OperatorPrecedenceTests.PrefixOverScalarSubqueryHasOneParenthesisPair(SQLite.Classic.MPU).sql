-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	-(
		SELECT
			MAX([x].[A])
		FROM
			[PrecedenceRow] [x]
		WHERE
			[x].[Id] <= [r].[Id]
	),
	~(
		SELECT
			MAX([x_1].[B])
		FROM
			[PrecedenceRow] [x_1]
		WHERE
			[x_1].[Id] <= [r].[Id]
	)
FROM
	[PrecedenceRow] [r]
ORDER BY
	[r].[Id]

