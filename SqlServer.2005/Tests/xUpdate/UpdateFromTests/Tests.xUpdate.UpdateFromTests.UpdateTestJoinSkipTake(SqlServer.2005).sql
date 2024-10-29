﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UpdatedEntities]', N'U') IS NOT NULL)
	DROP TABLE [UpdatedEntities]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

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
-- SqlServer.2005

IF (OBJECT_ID(N'[NewEntities]', N'U') IS NOT NULL)
	DROP TABLE [NewEntities]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NewEntities]', N'U') IS NULL)
	CREATE TABLE [NewEntities]
	(
		[id]     Int NOT NULL,
		[Value1] Int NOT NULL,
		[Value2] Int NOT NULL,
		[Value3] Int NOT NULL,

		CONSTRAINT [PK_NewEntities] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005
DECLARE @int1 Int -- Int32
SET     @int1 = 11
DECLARE @int2 Int -- Int32
SET     @int2 = 22
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

UPDATE
	[u]
SET
	[u].[Value1] = [t1].[c1],
	[u].[Value2] = [t1].[c2],
	[u].[Value3] = [t1].[c3]
FROM
	[UpdatedEntities] [u],
	(
		SELECT
			([c_1].[Value1] * [t].[Value1]) * @int1 as [c1],
			([c_1].[Value2] * [t].[Value2]) * @int2 as [c2],
			([c_1].[Value3] * [t].[Value3]) * @int3 as [c3],
			ROW_NUMBER() OVER (ORDER BY [c_1].[id]) as [RN],
			[c_1].[id]
		FROM
			[UpdatedEntities] [c_1]
				INNER JOIN [NewEntities] [t] ON [t].[id] = [c_1].[id]
		WHERE
			[t].[id] <> @someId
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take) AND
	[u].[id] = [t1].[id]

BeforeExecute
-- SqlServer.2005

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[NewEntities]', N'U') IS NOT NULL)
	DROP TABLE [NewEntities]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UpdatedEntities]', N'U') IS NOT NULL)
	DROP TABLE [UpdatedEntities]

