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
DECLARE @id Int -- Int32
SET     @id = 0
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1
DECLARE @Value2 Int -- Int32
SET     @Value2 = 1
DECLARE @Value3 Int -- Int32
SET     @Value3 = 3
DECLARE @RelationId Int -- Int32
SET     @RelationId = 0

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 11
DECLARE @Value2 Int -- Int32
SET     @Value2 = 12
DECLARE @Value3 Int -- Int32
SET     @Value3 = 13
DECLARE @RelationId Int -- Int32
SET     @RelationId = 1

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 2
DECLARE @Value1 Int -- Int32
SET     @Value1 = 21
DECLARE @Value2 Int -- Int32
SET     @Value2 = 22
DECLARE @Value3 Int -- Int32
SET     @Value3 = 23
DECLARE @RelationId Int -- Int32
SET     @RelationId = 2

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 3
DECLARE @Value1 Int -- Int32
SET     @Value1 = 31
DECLARE @Value2 Int -- Int32
SET     @Value2 = 32
DECLARE @Value3 Int -- Int32
SET     @Value3 = 33
DECLARE @RelationId Int -- Int32
SET     @RelationId = 3

INSERT INTO [UpdatedEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3],
	[RelationId]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

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
DECLARE @id Int -- Int32
SET     @id = 0
DECLARE @Value1 Int -- Int32
SET     @Value1 = 0
DECLARE @Value2 Int -- Int32
SET     @Value2 = 0
DECLARE @Value3 Int -- Int32
SET     @Value3 = 0

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1
DECLARE @Value2 Int -- Int32
SET     @Value2 = 1
DECLARE @Value3 Int -- Int32
SET     @Value3 = 1

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 2
DECLARE @Value1 Int -- Int32
SET     @Value1 = 2
DECLARE @Value2 Int -- Int32
SET     @Value2 = 2
DECLARE @Value3 Int -- Int32
SET     @Value3 = 2

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 3
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3
DECLARE @Value2 Int -- Int32
SET     @Value2 = 3
DECLARE @Value3 Int -- Int32
SET     @Value3 = 3

INSERT INTO [NewEntities]
(
	[id],
	[Value1],
	[Value2],
	[Value3]
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

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
			ROW_NUMBER() OVER (ORDER BY [t1].[id]) as [RN],
			[t1].[id]
		FROM
			[UpdatedEntities] [t1]
				INNER JOIN [NewEntities] [t] ON [t].[id] = [t1].[id]
		WHERE
			[t].[id] <> @someId
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= 3 AND [u].[id] = [t2].[id]

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

