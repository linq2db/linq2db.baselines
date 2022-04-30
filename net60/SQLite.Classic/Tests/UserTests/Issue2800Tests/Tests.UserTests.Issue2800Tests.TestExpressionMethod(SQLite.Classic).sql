﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Car]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Car]
(
	[Id]   INTEGER      NOT NULL,
	[Name] NVarChar(50)     NULL,

	CONSTRAINT [PK_Car] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Car]
(
	[Id],
	[Name]
)
VALUES
(1,'Special'),
(2,'NoSpecial')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	([x].[Name] <> 'Special' OR [x].[Name] IS NULL)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = 'Special'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	([x].[Name] <> 'Special' OR [x].[Name] IS NULL)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Car] [x]
WHERE
	[x].[Name] = 'Special'

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Car]

