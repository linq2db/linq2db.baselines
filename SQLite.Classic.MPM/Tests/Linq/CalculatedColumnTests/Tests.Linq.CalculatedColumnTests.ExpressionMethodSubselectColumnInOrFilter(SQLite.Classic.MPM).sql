-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[cu].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[CardCountCard] [card]
		WHERE
			[card].[PersonId] = [cu].[Id] AND [card].[CardType] = 2
	)
FROM
	[CardCountPerson] [cu]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[cu].[Id],
	[cu].[Name],
	[cu].[CountOfCards],
	(
		SELECT
			COUNT(*)
		FROM
			[CardCountCard] [card]
		WHERE
			[card].[PersonId] = [cu].[Id] AND [card].[CardType] = 2
	),
	(
		SELECT
			COUNT(*)
		FROM
			[CardCountCard] [a_Cards]
		WHERE
			[cu].[Id] = [a_Cards].[PersonId] AND [a_Cards].[CardType] = 2
	)
FROM
	[CardCountPerson] [cu]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[cu].[Id],
	[cu].[Name],
	[cu].[CountOfCards],
	(
		SELECT
			COUNT(*)
		FROM
			[CardCountCard] [card]
		WHERE
			[card].[PersonId] = [cu].[Id] AND [card].[CardType] = 2
	),
	(
		SELECT
			COUNT(*)
		FROM
			[CardCountCard] [a_Cards]
		WHERE
			[cu].[Id] = [a_Cards].[PersonId] AND [a_Cards].[CardType] = 2
	)
FROM
	[CardCountPerson] [cu]

