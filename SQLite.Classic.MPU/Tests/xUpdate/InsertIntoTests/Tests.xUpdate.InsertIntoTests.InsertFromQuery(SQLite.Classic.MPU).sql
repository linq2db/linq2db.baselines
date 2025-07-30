BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [InsertTestClassDest]
(
	[Id],
	[Value],
	[OtherValue]
)
SELECT
	[x].[Id] + 1,
	[x].[Value],
	[x].[OtherValue]
FROM
	[InsertTestClass] [x]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClass] [t1]
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClassDest] [t1]
LIMIT 2

