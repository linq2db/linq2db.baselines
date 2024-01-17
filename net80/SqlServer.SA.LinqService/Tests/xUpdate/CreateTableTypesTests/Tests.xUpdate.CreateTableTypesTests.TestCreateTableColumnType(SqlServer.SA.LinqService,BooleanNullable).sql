BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]              Int NOT NULL,
		[BooleanNullable] Bit     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BooleanNullable Bit -- Boolean
SET     @BooleanNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @BooleanNullable Bit -- Boolean
SET     @BooleanNullable = 1

INSERT INTO [CreateTableTypes]
(
	[Id],
	[BooleanNullable]
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[BooleanNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]

