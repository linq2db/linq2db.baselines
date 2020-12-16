BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1983Person]
(
	[Id]            INTEGER       NOT NULL,
	[Name]          NVarChar(255)     NULL,
	[CountOfCards]  INTEGER       NOT NULL,
	[CountOfCards2] INTEGER       NOT NULL,
	[CountOfCards3] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1983Card]
(
	[Id]         INTEGER       NOT NULL,
	[CardType]   INTEGER       NOT NULL,
	[CardNumber] NVarChar(255)     NULL,
	[PersonId]   INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[cu].[Id],
	[cu].[CountOfCards_1]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card_1]
				WHERE
					[card_1].[PersonId] = [p].[Id] AND [card_1].[CardType] = 2
			) as [CountOfCards],
			[p].[Id],
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card]
				WHERE
					[card].[PersonId] = [p].[Id] AND [card].[CardType] = 2
			) as [CountOfCards_1]
		FROM
			[Issue1983Person] [p]
	) [cu]
WHERE
	([cu].[CountOfCards] = 0 OR ([cu].[CountOfCards] <> 0 OR [cu].[CountOfCards] IS NULL))

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[cu_1].[Id],
	[cu_1].[Name],
	[cu_1].[CountOfCards],
	[cu_1].[CountOfCards2],
	[cu_1].[CountOfCards3],
	[cu_1].[CountOfCards2_1],
	[cu_1].[CountOfCards3_1]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card_2]
				WHERE
					[cu].[Id] = [card_2].[PersonId] AND [card_2].[CardType] = 2
			) as [ex],
			[cu].[Id],
			[cu].[Name],
			[cu].[CountOfCards],
			[cu].[CountOfCards2],
			[cu].[CountOfCards3],
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card]
				WHERE
					[card].[PersonId] = [cu].[Id] AND [card].[CardType] = 2
			) as [CountOfCards2_1],
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card_1]
				WHERE
					[cu].[Id] = [card_1].[PersonId] AND [card_1].[CardType] = 2
			) as [CountOfCards3_1]
		FROM
			[Issue1983Person] [cu]
	) [cu_1]
WHERE
	([cu_1].[ex] = 0 OR ([cu_1].[ex] <> 0 OR [cu_1].[ex] IS NULL))

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[cu_1].[Id],
	[cu_1].[Name],
	[cu_1].[CountOfCards],
	[cu_1].[CountOfCards2],
	[cu_1].[CountOfCards3],
	[cu_1].[CountOfCards2_1],
	[cu_1].[CountOfCards3_1]
FROM
	(
		SELECT
			[cu].[Id],
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card_2]
				WHERE
					[card_2].[PersonId] = [cu].[Id] AND [card_2].[CardType] = 2
			) as [cnt],
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card_3]
				WHERE
					[card_3].[PersonId] = [cu].[Id] AND [card_3].[CardType] = 2
			) as [ex],
			[cu].[Name],
			[cu].[CountOfCards],
			[cu].[CountOfCards2],
			[cu].[CountOfCards3],
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card]
				WHERE
					[card].[PersonId] = [cu].[Id] AND [card].[CardType] = 2
			) as [CountOfCards2_1],
			(
				SELECT
					Count(*)
				FROM
					[Issue1983Card] [card_1]
				WHERE
					[cu].[Id] = [card_1].[PersonId] AND [card_1].[CardType] = 2
			) as [CountOfCards3_1]
		FROM
			[Issue1983Person] [cu]
	) [cu_1]
WHERE
	([cu_1].[cnt] = 0 OR ([cu_1].[ex] <> 0 OR [cu_1].[ex] IS NULL))

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1983Card]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1983Person]

