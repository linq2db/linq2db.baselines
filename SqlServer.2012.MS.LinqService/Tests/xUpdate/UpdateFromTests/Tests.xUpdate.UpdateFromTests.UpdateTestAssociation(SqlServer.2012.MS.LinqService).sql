﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

UPDATE
	[v]
SET
	[v].[Value1] = [a_Relation].[RelatedValue3]
FROM
	[UpdatedEntities] [v]
		INNER JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT TOP (1)
	[v].[Value1]
FROM
	[UpdatedEntities] [v]
		INNER JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11

