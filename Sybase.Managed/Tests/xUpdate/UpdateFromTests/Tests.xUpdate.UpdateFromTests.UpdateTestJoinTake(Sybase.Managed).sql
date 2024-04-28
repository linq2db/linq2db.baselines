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

IF (OBJECT_ID(N'NewEntities') IS NOT NULL)
	DROP TABLE [NewEntities]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NewEntities') IS NULL)
	EXECUTE('
		CREATE TABLE [NewEntities]
		(
			[id]     Int NOT NULL,
			[Value1] Int NOT NULL,
			[Value2] Int NOT NULL,
			[Value3] Int NOT NULL,

			CONSTRAINT [PK_NewEntities] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
SELECT 0,0,0,0 UNION ALL
SELECT 1,1,1,1 UNION ALL
SELECT 2,2,2,2 UNION ALL
SELECT 3,3,3,3

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NewEntities') IS NOT NULL)
	DROP TABLE [NewEntities]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdatedEntities') IS NOT NULL)
	DROP TABLE [UpdatedEntities]

