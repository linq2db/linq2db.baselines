BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [UpdatedEntities]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [NewEntities]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(0,0,0,0),
(1,1,1,1),
(2,2,2,2),
(3,3,3,3)

BeforeExecute
-- SqlServer.2022
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
	[u].[Value1] = [t2].[c1],
	[u].[Value2] = [t2].[c2],
	[u].[Value3] = [t2].[c3]
FROM
	[UpdatedEntities] [u],
	(
		SELECT
			([t1].[Value1] * [t].[Value1]) * @int1 as [c1],
			([t1].[Value2] * [t].[Value2]) * @int2 as [c2],
			([t1].[Value3] * [t].[Value3]) * @int3 as [c3],
			[t1].[id]
		FROM
			[UpdatedEntities] [t1]
				INNER JOIN [NewEntities] [t] ON [t].[id] = [t1].[id]
		WHERE
			[t].[id] <> @someId
		ORDER BY
			[t1].[id]
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t2]
WHERE
	[u].[id] = [t2].[id]

BeforeExecute
-- SqlServer.2022

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [NewEntities]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [UpdatedEntities]

