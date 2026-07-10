-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[ClientCalcEntity] [g_1]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	[g_1].[Id]
FROM
	[ClientCalcEntity] [g_1]
GROUP BY
	[g_1].[Id]
HAVING
	COUNT(*) > @p

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 0

SELECT
	[e].[Id],
	[j].[Id]
FROM
	[ClientCalcEntity] [e]
		INNER JOIN [ClientCalcEntity] [j] ON [e].[Id] + @Id = [j].[Id]

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

