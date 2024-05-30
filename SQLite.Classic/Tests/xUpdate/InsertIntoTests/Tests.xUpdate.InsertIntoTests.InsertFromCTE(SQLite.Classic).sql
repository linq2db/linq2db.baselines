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

WITH [CTE_1] ([Id], [Value_1], [OtherValue])
AS
(
	SELECT
		[t1].[Id],
		[t1].[Value],
		[t1].[OtherValue]
	FROM
		[InsertTestClass] [t1]
)
INSERT INTO [InsertTestClassDest]
(
	[Id],
	[Value],
	[OtherValue]
)
SELECT
	[t2].[Id],
	[t2].[Value_1],
	[t2].[OtherValue]
FROM
	[CTE_1] [t2]

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

