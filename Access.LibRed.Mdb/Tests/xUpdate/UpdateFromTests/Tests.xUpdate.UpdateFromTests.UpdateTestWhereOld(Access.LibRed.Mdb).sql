-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @int1  -- Int32
SET     @int1 = 11
DECLARE @int2  -- Int32
SET     @int2 = 22
DECLARE @int3  -- Int32
SET     @int3 = 33
DECLARE @someId  -- Int32
SET     @someId = 100

UPDATE
	[UpdatedEntities] [c_1],
	[NewEntities] [t]
SET
	[c_1].[Value1] = ([c_1].[Value1] * [t].[Value1]) * @int1,
	[c_1].[Value2] = ([c_1].[Value2] * [t].[Value2]) * @int2,
	[c_1].[Value3] = ([c_1].[Value3] * [t].[Value3]) * @int3
WHERE
	[t].[id] = [c_1].[id] AND [t].[id] <> @someId

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

