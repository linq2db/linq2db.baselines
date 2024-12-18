BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EnumCardinality]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EnumCardinality]
(
	[Id]        INTEGER  NOT NULL,
	[Property1] NChar(1) NOT NULL,
	[Property2] NChar(1)     NULL,
	[Property3] NChar(1) NOT NULL,
	[Property4] NChar(1)     NULL,
	[Property5] NChar(1) NOT NULL,
	[Property6] NChar(1)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [EnumCardinality]
(
	[Id],
	[Property1],
	[Property2],
	[Property3],
	[Property4],
	[Property5],
	[Property6]
)
VALUES
(1,'A','A','A','A','A','A'),
(2,'B','B','B','B','B','B'),
(3,'C','C','C','C','C','C')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Property1],
	[t1].[Property2],
	[t1].[Property3],
	[t1].[Property4],
	[t1].[Property5],
	[t1].[Property6]
FROM
	[EnumCardinality] [t1]
WHERE
	[t1].[Property2] > 'B' AND [t1].[Property2] IS NOT NULL
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EnumCardinality]

