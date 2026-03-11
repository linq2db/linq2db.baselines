-- Sybase.Managed Sybase

UPDATE
	[UpdatedEntities]
SET
	[Value1] = [a_Relation].[RelatedValue3]
FROM
	[UpdateRelation] [a_Relation]
WHERE
	[a_Relation].[RelatedValue1] = 11 AND [UpdatedEntities].[RelationId] = [a_Relation].[id]

-- Sybase.Managed Sybase

SELECT TOP 1
	[v].[Value1]
FROM
	[UpdatedEntities] [v]
		INNER JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11

