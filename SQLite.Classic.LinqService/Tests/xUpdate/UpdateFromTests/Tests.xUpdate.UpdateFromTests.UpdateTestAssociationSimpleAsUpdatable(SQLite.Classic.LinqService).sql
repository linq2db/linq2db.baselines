BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[UpdatedEntities]
SET
	[Value1] = [v].[Value1] + [v].[Value2] + [v].[Value3],
	[Value2] = [v].[Value1] + [v].[Value2] + [v].[Value3],
	[Value3] = 1
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11 AND [UpdatedEntities].[id] = [v].[id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11
LIMIT 1

