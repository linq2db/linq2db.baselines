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
	[u].[Value1] = [t1].[c1],
	[u].[Value2] = [t1].[c2],
	[u].[Value3] = [t1].[c3]
FROM
	[UpdatedEntities] [u],
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
		ORDER BY
			[c_1].[id]
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t1]
WHERE
	[u].[id] = [t1].[id]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

