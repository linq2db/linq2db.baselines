BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]     Int   NOT NULL,
		[Double] Float NOT NULL
	)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Double Float -- Double
SET     @Double = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Double Float -- Double
SET     @Double = 3.1400000000000001

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Double]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [CreateTableTypes]

