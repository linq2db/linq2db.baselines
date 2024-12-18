BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdatedEntities') IS NOT NULL)
	DROP TABLE [UpdatedEntities]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdatedEntities') IS NULL)
	EXECUTE('
		CREATE TABLE [UpdatedEntities]
		(
			[id]         Int NOT NULL,
			[Value1]     Int NOT NULL,
			[Value2]     Int NOT NULL,
			[Value3]     Int NOT NULL,
			[RelationId] Int     NULL,

			CONSTRAINT [PK_UpdatedEntities] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdateRelation') IS NOT NULL)
	DROP TABLE [UpdateRelation]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdateRelation') IS NULL)
	EXECUTE('
		CREATE TABLE [UpdateRelation]
		(
			[id]            Int NOT NULL,
			[RelatedValue1] Int NOT NULL,
			[RelatedValue2] Int NOT NULL,
			[RelatedValue3] Int NOT NULL,

			CONSTRAINT [PK_UpdateRelation] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

UPDATE
	[UpdatedEntities]
SET
	[Value1] = [a_Relation].[RelatedValue3]
FROM
	[UpdateRelation] [a_Relation]
WHERE
	[a_Relation].[RelatedValue1] = 11 AND
	[a_Relation].[RelatedValue1] IS NOT NULL AND
	[UpdatedEntities].[RelationId] = [a_Relation].[id] AND
	[UpdatedEntities].[RelationId] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[v].[Value1]
FROM
	[UpdatedEntities] [v]
		LEFT JOIN [UpdateRelation] [a_Relation] ON [v].[RelationId] = [a_Relation].[id] AND [v].[RelationId] IS NOT NULL
WHERE
	[a_Relation].[RelatedValue1] = 11 AND [a_Relation].[RelatedValue1] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdateRelation') IS NOT NULL)
	DROP TABLE [UpdateRelation]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdatedEntities') IS NOT NULL)
	DROP TABLE [UpdatedEntities]

