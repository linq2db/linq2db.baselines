BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MasterClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MasterClass]
(
	[Id1]        INTEGER       NOT NULL,
	[Id2]        INTEGER       NOT NULL,
	[Value]      NVarChar(255)     NULL,
	[ByteValues] VarBinary         NULL,

	CONSTRAINT [PK_MasterClass] PRIMARY KEY ([Id1], [Id2])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(1,1,'Str1',NULL),
(2,2,'Str2',NULL),
(3,3,'Str3',NULL),
(4,4,'Str4',NULL),
(5,5,'Str5',NULL),
(6,6,'Str6',NULL),
(7,7,'Str7',NULL),
(8,8,'Str8',NULL),
(9,9,'Str9',NULL),
(10,10,'Str10',NULL)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[e1].[Id1],
	[e1].[Value],
	[e1].[ByteValues]
FROM
	[MasterClass] [e1]
UNION ALL
SELECT
	[e].[Id1],
	'Str',
	[e].[ByteValues]
FROM
	[MasterClass] [e]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MasterClass]

