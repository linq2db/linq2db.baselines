BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
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
	[Value1] = [t1].[c1],
	[Value2] = [t1].[c2],
	[Value3] = [t1].[c3]
FROM
	(
		SELECT
			([c_1].[Value1] * [t].[Value1]) * @int1 as [c1],
			([c_1].[Value2] * [t].[Value2]) * @int2 as [c2],
			([c_1].[Value3] * [t].[Value3]) * @int3 as [c3],
			[c_1].[id]
		FROM
			[UpdatedEntities] [c_1]
				INNER JOIN [NewEntities] [t] ON [t].[id] = [c_1].[id]
		WHERE
			[t].[id] <> @someId
		LIMIT @take
	) [t1]
WHERE
	[UpdatedEntities].[id] = [t1].[id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

