BeforeExecute
-- Access.Jet.OleDb AccessOleDb

UPDATE
	[UpdatedEntities] [v]
		INNER JOIN [UpdateRelation] [a_Relation] ON ([v].[RelationId] = [a_Relation].[id])
SET
	[v].[Value1] = [a_Relation].[RelatedValue3]
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[v].[Value1]
FROM
	[UpdatedEntities] [v]
		INNER JOIN [UpdateRelation] [a_Relation] ON ([v].[RelationId] = [a_Relation].[id])
WHERE
	[a_Relation].[RelatedValue1] = 11

