﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [UpdatedEntities]

BeforeExecute
-- SqlServer.2019

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
-- SqlServer.2019

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(0,1,1,3,0),
(1,11,12,13,1),
(2,21,22,23,2),
(3,31,32,33,3)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [UpdateRelation]

BeforeExecute
-- SqlServer.2019

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
-- SqlServer.2019

INSERT INTO [UpdateRelation]
(
	[id],
	[RelatedValue1],
	[RelatedValue2],
	[RelatedValue3]
)
VALUES
(0,1,2,3),
(1,11,12,13),
(2,21,22,23),
(3,31,32,33)

BeforeExecute
-- SqlServer.2019

UPDATE
	[v]
SET
	[v].[Value1] = [a_Relation].[RelatedValue3]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[v].[Value1]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id]
WHERE
	[a_Relation].[RelatedValue1] = 11

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [UpdateRelation]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [UpdatedEntities]

