-- SQLite.Classic.MPU SQLite.Classic SQLite

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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClass] [t1]
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[OtherValue]
FROM
	[InsertTestClassDest] [t1]
LIMIT 2

