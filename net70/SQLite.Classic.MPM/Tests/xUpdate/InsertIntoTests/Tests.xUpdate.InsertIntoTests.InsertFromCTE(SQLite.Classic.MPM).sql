BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClass]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InsertTestClass]
(
	[Id]         INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]      INTEGER  NOT NULL,
	[OtherValue] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [InsertTestClass]
(
	[Value],
	[OtherValue]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClassDest]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InsertTestClassDest]
(
	[Id]         INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Value]      INTEGER  NOT NULL,
	[OtherValue] INTEGER      NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [CTE_1] ([Id], [Value], [OtherValue])
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
	[Value],
	[OtherValue]
)
SELECT
	[t2].[Value],
	[t2].[OtherValue]
FROM
	[CTE_1] [t2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClass] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClassDest] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClassDest]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [InsertTestClass]

