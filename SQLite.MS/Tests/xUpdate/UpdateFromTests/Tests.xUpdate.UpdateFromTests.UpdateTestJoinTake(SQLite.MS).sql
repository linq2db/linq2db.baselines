-- SQLite.MS SQLite
DECLARE @int1  -- Int32
SET     @int1 = 11
DECLARE @int2  -- Int32
SET     @int2 = 22
DECLARE @int3  -- Int32
SET     @int3 = 33
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2

UPDATE
	[UpdatedEntities]
SET
	[Value1] = [t2].[c1],
	[Value2] = [t2].[c2],
	[Value3] = [t2].[c3]
FROM
	(
		SELECT
			([t1].[Value1] * [t].[Value1]) * @int1 as [c1],
			([t1].[Value2] * [t].[Value2]) * @int2 as [c2],
			([t1].[Value3] * [t].[Value3]) * @int3 as [c3],
			[t1].[id]
		FROM
			[UpdatedEntities] [t1]
				INNER JOIN [NewEntities] [t] ON [t].[id] = [t1].[id]
		WHERE
			[t].[id] <> @someId
		LIMIT @take
	) [t2]
WHERE
	[UpdatedEntities].[id] = [t2].[id]

-- SQLite.MS SQLite

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

