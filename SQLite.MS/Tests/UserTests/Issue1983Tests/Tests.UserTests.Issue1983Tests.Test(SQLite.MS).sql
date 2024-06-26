﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1983Person]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1983Person]
(
	[Id]            INTEGER       NOT NULL,
	[Name]          NVarChar(255)     NULL,
	[CountOfCards]  INTEGER       NOT NULL,
	[CountOfCards2] INTEGER       NOT NULL,
	[CountOfCards3] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1983Card]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1983Card]
(
	[Id]         INTEGER       NOT NULL,
	[CardType]   INTEGER       NOT NULL,
	[CardNumber] NVarChar(255)     NULL,
	[PersonId]   INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[cu_1].[Id],
	[cu_1].[CountOfCards]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Issue1983Card] [card]
				WHERE
					[card].[PersonId] = [cu].[Id] AND [card].[CardType] = 2
			) as [CountOfCards],
			[cu].[Id]
		FROM
			[Issue1983Person] [cu]
	) [cu_1]
WHERE
	([cu_1].[CountOfCards] = 0 OR [cu_1].[CountOfCards] <> 0 OR [cu_1].[CountOfCards] IS NULL)

BeforeExecute
-- SQLite.MS SQLite

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
	((
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [a_Cards_1]
		WHERE
			[cu].[Id] = [a_Cards_1].[PersonId] AND [a_Cards_1].[CardType] = 2
	) = 0 OR (
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [a_Cards_1]
		WHERE
			[cu].[Id] = [a_Cards_1].[PersonId] AND [a_Cards_1].[CardType] = 2
	) <> 0)

BeforeExecute
-- SQLite.MS SQLite

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
	((
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [card_1]
		WHERE
			[card_1].[PersonId] = [cu].[Id] AND [card_1].[CardType] = 2
	) = 0 OR (
		SELECT
			COUNT(*)
		FROM
			[Issue1983Card] [card_1]
		WHERE
			[card_1].[PersonId] = [cu].[Id] AND [card_1].[CardType] = 2
	) <> 0)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1983Card]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1983Person]

