BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[cu].[Id],
	[cu].[COUNT_1]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Issue1983Card] [card]
				WHERE
					[card].[PersonId] = [p].[Id] AND [card].[CardType] = 2
			) as [COUNT_1],
			[p].[Id]
		FROM
			[Issue1983Person] [p]
	) [cu]
WHERE
	[cu].[COUNT_1] = 0 OR [cu].[COUNT_1] <> 0 OR [cu].[COUNT_1] IS NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[cu].[Id],
	[cu].[Name],
	[cu].[CountOfCards],
	(
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [card]
		WHERE
			[card].[PersonId] = [cu].[Id] AND [card].[CardType] = 2
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[cu].[Id] = [a_Cards].[PersonId] AND [a_Cards].[CardType] = 2
	)
FROM
	[Issue1983Person] [cu]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[cu].[Id] = [a_Cards].[PersonId] AND [a_Cards].[CardType] = 2
	) = 0 OR
	(
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[cu].[Id] = [a_Cards].[PersonId] AND [a_Cards].[CardType] = 2
	) <> 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[cu].[Id],
	[cu].[Name],
	[cu].[CountOfCards],
	(
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [card]
		WHERE
			[card].[PersonId] = [cu].[Id] AND [card].[CardType] = 2
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[cu].[Id] = [a_Cards].[PersonId] AND [a_Cards].[CardType] = 2
	)
FROM
	[Issue1983Person] [cu]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [card_1]
		WHERE
			[card_1].[PersonId] = [cu].[Id] AND [card_1].[CardType] = 2
	) = 0 OR
	(
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [card_1]
		WHERE
			[card_1].[PersonId] = [cu].[Id] AND [card_1].[CardType] = 2
	) <> 0

