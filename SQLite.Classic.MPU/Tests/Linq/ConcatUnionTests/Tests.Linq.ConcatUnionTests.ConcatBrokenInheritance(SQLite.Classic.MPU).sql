BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SetEntityBase]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SetEntityBase]
(
	[Id]            INTEGER       NOT NULL,
	[Discriminator] INTEGER       NOT NULL,
	[IntValue]      INTEGER           NULL,
	[StrValue]      NVarChar(255)     NULL,
	[DoubleValue]   Float             NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Discriminator],
	CASE
		WHEN [t1].[Discriminator] = 3 THEN 1
		ELSE 0
	END,
	[t1].[Id],
	[t1].[DoubleValue],
	CASE
		WHEN [t1].[Discriminator] = 2 THEN 1
		ELSE 0
	END,
	[t1].[StrValue],
	CASE
		WHEN [t1].[Discriminator] = 1 THEN 1
		ELSE 0
	END,
	[t1].[IntValue],
	[t1].[Discriminator]
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
		UNION ALL
		SELECT
			[x_2].[Id],
			NULL as [Discriminator],
			NULL as [IntValue],
			NULL as [StrValue],
			CAST(4.4400000000000004 AS Float) as [DoubleValue]
		FROM
			[SetEntityBase] [x_2]
		WHERE
			[x_2].[Id] = 3
	) [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [SetEntityBase]

