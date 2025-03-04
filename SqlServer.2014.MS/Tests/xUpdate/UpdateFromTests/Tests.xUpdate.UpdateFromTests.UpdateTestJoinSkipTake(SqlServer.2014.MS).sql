BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @int1 Int -- Int32
SET     @int1 = 11
DECLARE @int2 Int -- Int32
SET     @int2 = 22
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

UPDATE
	[u]
SET
	[u].[Value1] = [t2].[c1],
	[u].[Value2] = [t2].[c2],
	[u].[Value3] = [t2].[c3]
FROM
	[UpdatedEntities] [u],
	(
		SELECT
			([t1].[Value1] * [t1].[Value1_1]) * @int1 as [c1],
			([t1].[Value2] * [t1].[Value2_1]) * @int2 as [c2],
			([t1].[Value3] * [t1].[Value3_1]) * @int3 as [c3],
			[t1].[id]
		FROM
			(
				SELECT
					[c_1].[id],
					[c_1].[Value1],
					[t].[Value1] as [Value1_1],
					[c_1].[Value2],
					[t].[Value2] as [Value2_1],
					[c_1].[Value3],
					[t].[Value3] as [Value3_1]
				FROM
					[UpdatedEntities] [c_1]
						INNER JOIN [NewEntities] [t] ON [t].[id] = [c_1].[id]
				WHERE
					[t].[id] <> @someId
			) [t1]
		ORDER BY
			[t1].[id]
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t2]
WHERE
	[u].[id] = [t2].[id]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

