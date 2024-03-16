﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UpdatedEntities]', N'U') IS NOT NULL)
	DROP TABLE [UpdatedEntities]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UpdatedEntities]', N'U') IS NULL)
	CREATE TABLE [UpdatedEntities]
	(
		[id]         Int NOT NULL,
		[Value1]     Int NOT NULL,
		[Value2]     Int NOT NULL,
		[Value3]     Int NOT NULL,
		[RelationId] Int     NULL,

		CONSTRAINT [PK_UpdatedEntities] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
SELECT 0,1,1,3,0 UNION ALL
SELECT 1,11,12,13,1 UNION ALL
SELECT 2,21,22,23,2 UNION ALL
SELECT 3,31,32,33,3

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UpdateRelation]', N'U') IS NOT NULL)
	DROP TABLE [UpdateRelation]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UpdateRelation]', N'U') IS NULL)
	CREATE TABLE [UpdateRelation]
	(
		[id]            Int NOT NULL,
		[RelatedValue1] Int NOT NULL,
		[RelatedValue2] Int NOT NULL,
		[RelatedValue3] Int NOT NULL,

		CONSTRAINT [PK_UpdateRelation] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [UpdateRelation]
(
	[id],
	[RelatedValue1],
	[RelatedValue2],
	[RelatedValue3]
)
SELECT 0,1,2,3 UNION ALL
SELECT 1,11,12,13 UNION ALL
SELECT 2,21,22,23 UNION ALL
SELECT 3,31,32,33

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Value3 Int -- Int32
SET     @Value3 = 1

UPDATE
	[v]
SET
	[v].[Value1] = [v].[Value1] + [v].[Value2] + [v].[Value3],
	[v].[Value2] = [v].[Value1] + [v].[Value2] + [v].[Value3],
	[v].[Value3] = @Value3
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON ([v].[RelationId] = [a_Relation].[id] OR [v].[RelationId] IS NULL AND [a_Relation].[id] IS NULL)
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON ([v].[RelationId] = [a_Relation].[id] OR [v].[RelationId] IS NULL AND [a_Relation].[id] IS NULL)
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UpdateRelation]', N'U') IS NOT NULL)
	DROP TABLE [UpdateRelation]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UpdatedEntities]', N'U') IS NOT NULL)
	DROP TABLE [UpdatedEntities]

