BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]     INTEGER       NOT NULL,
	[A]      INTEGER           NULL,
	[B]      INTEGER           NULL,
	[EnumA]  NChar(1)          NULL,
	[EnumB]  NChar(1)          NULL,
	[CEnumA] VarChar(20)       NULL,
	[CEnumB] VarChar(20)       NULL,
	[Text]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Src]
(
	[Id],
	[A],
	[B],
	[EnumA],
	[EnumB],
	[CEnumA],
	[CEnumB],
	[Text]
)
VALUES
(100,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(101,NULL,1,NULL,'A',NULL,'___One___',NULL),
(110,1,NULL,'A',NULL,'___One___',NULL,NULL),
(111,1,1,'A','A','___One___','___One___',NULL),
(112,1,2,'A','B','___One___','___Two___',NULL),
(121,2,1,'B','A','___Two___','___One___',NULL)

BeforeExecute
-- SQLite.MS SQLite

/* x => !(x.A == x.B) */
SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[A] <> [x].[B]
ORDER BY
	[x].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Src]

