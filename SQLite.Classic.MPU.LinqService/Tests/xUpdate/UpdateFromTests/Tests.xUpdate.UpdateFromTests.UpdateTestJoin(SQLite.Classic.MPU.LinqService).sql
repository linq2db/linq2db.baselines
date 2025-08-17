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

UPDATE
	[UpdatedEntities]
SET
	[Value1] = ([UpdatedEntities].[Value1] * [t].[Value1]) * @int1,
	[Value2] = ([UpdatedEntities].[Value2] * [t].[Value2]) * @int2,
	[Value3] = ([UpdatedEntities].[Value3] * [t].[Value3]) * @int3
FROM
	[NewEntities] [t]
WHERE
	[t].[id] <> @someId AND [t].[id] = [UpdatedEntities].[id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

