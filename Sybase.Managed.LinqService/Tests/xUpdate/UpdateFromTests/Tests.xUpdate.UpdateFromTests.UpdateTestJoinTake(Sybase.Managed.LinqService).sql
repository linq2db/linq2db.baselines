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
DECLARE @id Integer -- Int32
SET     @id = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 3
DECLARE @RelationId Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 11
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 12
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 13
DECLARE @RelationId Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 21
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 22
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 23
DECLARE @RelationId Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 31
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 32
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 33
DECLARE @RelationId Integer -- Int32
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
DECLARE @id Integer -- Int32
SET     @id = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 0
DECLARE @Value3 Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 1
DECLARE @Value3 Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 2
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 2
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 2
DECLARE @Value3 Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 3
DECLARE @Value3 Integer -- Int32
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

