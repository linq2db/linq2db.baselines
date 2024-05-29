BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]    Int    NOT NULL,
		[Int64] BigInt NOT NULL
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64]
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 3

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64]
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Int64]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [CreateTableTypes]

