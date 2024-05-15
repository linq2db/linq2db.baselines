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
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33
DECLARE @someId Integer -- Int32
SET     @someId = 100

UPDATE TOP 2
	[UpdatedEntities]
SET
	[Value1] = ([UpdatedEntities].[Value1] * [t].[Value1]) * @int1,
	[Value2] = ([UpdatedEntities].[Value2] * [t].[Value2]) * @int2,
	[Value3] = ([UpdatedEntities].[Value3] * [t].[Value3]) * @int3
FROM
	[NewEntities] [t]
WHERE
	[t].[id] <> @someId AND [t].[id] = [UpdatedEntities].[id]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'NewEntities') IS NOT NULL)
	DROP TABLE [NewEntities]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UpdatedEntities') IS NOT NULL)
	DROP TABLE [UpdatedEntities]

