BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @int1 Int -- Int32
SET     @int1 = 11
DECLARE @int2 Int -- Int32
SET     @int2 = 22
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @someId Int -- Int32
SET     @someId = 100

UPDATE
	[c_1]
SET
	[c_1].[Value1] = ([c_1].[Value1] * [t].[Value1]) * @int1,
	[c_1].[Value2] = ([c_1].[Value2] * [t].[Value2]) * @int2,
	[c_1].[Value3] = ([c_1].[Value3] * [t].[Value3]) * @int3
FROM
	[UpdatedEntities] [c_1]
		CROSS JOIN [NewEntities] [t]
WHERE
	[t].[id] = [c_1].[id] AND [t].[id] <> @someId

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

