﻿BeforeExecute
-- SqlServer.2008

UPDATE
	[v]
SET
	[v].[Value1] = [v].[Value1] + [v].[Value2] + [v].[Value3],
	[v].[Value2] = [v].[Value1] + [v].[Value2] + [v].[Value3],
	[v].[Value3] = 1
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- SqlServer.2008

SELECT TOP (1)
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11

