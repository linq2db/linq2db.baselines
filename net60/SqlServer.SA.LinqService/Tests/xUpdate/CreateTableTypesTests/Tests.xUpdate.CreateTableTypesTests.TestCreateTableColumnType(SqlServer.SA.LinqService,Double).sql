BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[CreateTableTypes]', N'U') IS NULL)
	CREATE TABLE [CreateTableTypes]
	(
		[Id]     Int   NOT NULL,
		[Double] Float NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Double_1 Float -- Double
SET     @Double_1 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Double_1 Float -- Double
SET     @Double_1 = 3.1400000000000001

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Double]
)
VALUES
(
	@Id,
	@Double_1
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Double]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [CreateTableTypes]

