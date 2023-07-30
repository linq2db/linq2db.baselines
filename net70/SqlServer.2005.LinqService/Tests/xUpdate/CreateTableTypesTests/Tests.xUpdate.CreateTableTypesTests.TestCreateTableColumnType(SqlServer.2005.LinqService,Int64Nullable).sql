BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]            Int    NOT NULL,
		[Int64Nullable] BigInt     NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int64Nullable BigInt -- Int64
SET     @Int64Nullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64Nullable]
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int64Nullable BigInt -- Int64
SET     @Int64Nullable = 4

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64Nullable]
)
VALUES
(
	@Id,
	@Int64Nullable
)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Int64Nullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NOT NULL)
	DROP TABLE [CreateTableTypes]

