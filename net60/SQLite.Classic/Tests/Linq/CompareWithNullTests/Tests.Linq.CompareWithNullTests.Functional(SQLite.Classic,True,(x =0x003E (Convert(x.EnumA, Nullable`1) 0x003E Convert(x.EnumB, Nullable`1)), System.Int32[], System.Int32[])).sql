BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Src]
(
	[Id]     INTEGER     NOT NULL,
	[A]      INTEGER         NULL,
	[B]      INTEGER         NULL,
	[EnumA]  NChar(1)        NULL,
	[EnumB]  NChar(1)        NULL,
	[CEnumA] VarChar(20)     NULL,
	[CEnumB] VarChar(20)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Src]
(
	[Id],
	[A],
	[B],
	[EnumA],
	[EnumB],
	[CEnumA],
	[CEnumB]
)
VALUES
(100,NULL,NULL,NULL,NULL,NULL,NULL),
(101,NULL,1,NULL,'A',NULL,'___One___'),
(110,1,NULL,'A',NULL,'___One___',NULL),
(111,1,1,'A','A','___One___','___One___'),
(112,1,2,'A','B','___One___','___Two___'),
(121,2,1,'B','A','___Two___','___One___')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id]
FROM
	[Src] [x]
WHERE
	[x].[EnumA] > [x].[EnumB]
ORDER BY
	[x].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Src]

