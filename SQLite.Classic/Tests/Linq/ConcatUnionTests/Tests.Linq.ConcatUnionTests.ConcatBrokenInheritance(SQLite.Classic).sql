﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SetEntityBase]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SetEntityBase]
(
	[Id]            INTEGER       NOT NULL,
	[Discriminator] INTEGER       NOT NULL,
	[IntValue]      INTEGER           NULL,
	[StrValue]      NVarChar(255)     NULL,
	[DoubleValue]   Float             NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [SetEntityBase]
(
	[Id],
	[Discriminator],
	[IntValue],
	[StrValue],
	[DoubleValue]
)
VALUES
(1,1,11,NULL,NULL),
(2,2,NULL,'Str22',NULL),
(3,3,NULL,NULL,33.329999999999998)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Discriminator],
	[t1].[DoubleValue],
	[t1].[StrValue],
	[t1].[IntValue],
	NULL,
	NULL
FROM
	(
		SELECT
			[x].[Id],
			[x].[Discriminator],
			[x].[IntValue],
			[x].[StrValue],
			[x].[DoubleValue]
		FROM
			[SetEntityBase] [x]
		WHERE
			[x].[Id] = 1
		UNION ALL
		SELECT
			[x_1].[Id],
			[x_1].[Discriminator],
			[x_1].[IntValue],
			[x_1].[StrValue],
			[x_1].[DoubleValue]
		FROM
			[SetEntityBase] [x_1]
		WHERE
			[x_1].[Id] = 2
	) [t1]
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	[x_2].[Id],
	CAST(4.4400000000000004 AS Float)
FROM
	[SetEntityBase] [x_2]
WHERE
	[x_2].[Id] = 3

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SetEntityBase]

