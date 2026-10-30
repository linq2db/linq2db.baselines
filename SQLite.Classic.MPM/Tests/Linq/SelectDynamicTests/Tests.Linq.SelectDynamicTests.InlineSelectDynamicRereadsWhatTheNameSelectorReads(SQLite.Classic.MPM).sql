-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[a].[Id]
FROM
	[Amounts] [a]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Amounts] [r]
		WHERE
			[r].[Id] > 0 AND [r].[Id] = [a].[Id] AND [r].[Usd] * 2 > 50
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[a].[Id]
FROM
	[Amounts] [a]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Amounts] [r]
		WHERE
			[r].[Id] > 0 AND [r].[Id] = [a].[Id] AND [r].[Usd] > 50
	)

