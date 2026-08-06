-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[e].[Id],
	[e].[Value1],
	[e].[Value2],
	[e].[Name]
FROM
	[ClientCalcEntity] [e]
WHERE
	[e].[Id] = @p

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

