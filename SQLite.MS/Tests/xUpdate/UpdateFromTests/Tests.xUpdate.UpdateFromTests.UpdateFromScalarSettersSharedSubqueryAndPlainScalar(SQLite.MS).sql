-- SQLite.MS SQLite
DECLARE @Value3  -- Int32
SET     @Value3 = 42

UPDATE
	[UpdatedEntities]
SET
	[Value1] = [r].[RelatedValue1],
	[Value2] = [r].[RelatedValue2],
	[Value3] = @Value3
FROM
	[UpdateRelation] [r]
WHERE
	[UpdatedEntities].[id] = 1 AND [r].[id] = [UpdatedEntities].[RelationId]

