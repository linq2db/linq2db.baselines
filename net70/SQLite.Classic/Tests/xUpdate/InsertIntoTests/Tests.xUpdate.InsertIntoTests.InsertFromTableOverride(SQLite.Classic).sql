BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InsertTestClass]
(
	[Id]         INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]      INTEGER  NOT NULL,
	[OtherValue] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [InsertTestClass]
(
	[Value],
	[OtherValue]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClassDest]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InsertTestClassDest]
(
	[Id]         INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]      INTEGER  NOT NULL,
	[OtherValue] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [InsertTestClassDest]
(
	[Value],
	[OtherValue]
)
SELECT
	[t1].[Value] + 2,
	[t1].[OtherValue] + 2
FROM
	[InsertTestClass] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClass] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClassDest] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClassDest]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClass]

