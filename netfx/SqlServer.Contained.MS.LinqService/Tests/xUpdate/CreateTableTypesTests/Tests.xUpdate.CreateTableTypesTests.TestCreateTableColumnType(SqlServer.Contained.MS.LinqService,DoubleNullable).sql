BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]             Int   NOT NULL,
		[DoubleNullable] Float     NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DoubleNullable Float -- Double
SET     @DoubleNullable = NULL

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DoubleNullable]
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DoubleNullable Float -- Double
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO [CreateTableTypes]
(
	[Id],
	[DoubleNullable]
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[DoubleNullable]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]

