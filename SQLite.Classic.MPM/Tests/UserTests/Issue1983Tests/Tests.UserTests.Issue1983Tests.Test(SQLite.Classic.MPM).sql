BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1983Person]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1983Person]
(
	[Id]            INTEGER       NOT NULL,
	[Name]          NVarChar(255)     NULL,
	[CountOfCards]  INTEGER       NOT NULL,
	[CountOfCards2] INTEGER       NOT NULL,
	[CountOfCards3] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1983Card]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1983Card]
(
	[Id]         INTEGER       NOT NULL,
	[CardType]   INTEGER       NOT NULL,
	[CardNumber] NVarChar(255)     NULL,
	[PersonId]   INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[cu_1].[Id],
	[cu_1].[CountOfCards]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [t1]
				WHERE
					[t1].[PersonId] = [cu].[Id] AND [t1].[CardType] = 2
			) as [CountOfCards],
			[cu].[Id]
		FROM
			[Issue1983Person] [cu]
	) [cu_1]
WHERE
	([cu_1].[CountOfCards] = 0 OR [cu_1].[CountOfCards] <> 0 OR [cu_1].[CountOfCards] IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[cu].[Id],
	[cu].[Name],
	[cu].[CountOfCards],
	(
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [t1]
		WHERE
			[t1].[PersonId] = [cu].[Id] AND [t1].[CardType] = 2
	),
	(
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[a_Cards].[CardType] = 2 AND [cu].[Id] = [a_Cards].[PersonId]
	)
FROM
	[Issue1983Person] [cu]
WHERE
	((
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[a_Cards].[CardType] = 2 AND [cu].[Id] = [a_Cards].[PersonId]
	) = 0 OR (
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[a_Cards].[CardType] = 2 AND [cu].[Id] = [a_Cards].[PersonId]
	) <> 0 OR (
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[a_Cards].[CardType] = 2 AND [cu].[Id] = [a_Cards].[PersonId]
	) IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[cu].[Id],
	[cu].[Name],
	[cu].[CountOfCards],
	(
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [t1]
		WHERE
			[t1].[PersonId] = [cu].[Id] AND [t1].[CardType] = 2
	),
	(
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [a_Cards]
		WHERE
			[a_Cards].[CardType] = 2 AND [cu].[Id] = [a_Cards].[PersonId]
	)
FROM
	[Issue1983Person] [cu]
WHERE
	((
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [t2]
		WHERE
			[t2].[PersonId] = [cu].[Id] AND [t2].[CardType] = 2
	) = 0 OR (
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [t2]
		WHERE
			[t2].[PersonId] = [cu].[Id] AND [t2].[CardType] = 2
	) <> 0 OR (
		SELECT
			Count(*)
		FROM
			[Issue1983Card] [t2]
		WHERE
			[t2].[PersonId] = [cu].[Id] AND [t2].[CardType] = 2
	) IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1983Card]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1983Person]

