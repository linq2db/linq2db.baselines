BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4469Table]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue4469Table]', N'U') IS NULL)
	CREATE TABLE [Issue4469Table]
	(
		[Integer] Int            NOT NULL,
		[Decimal] Decimal(10, 5) NOT NULL,
		[Double]  Float          NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Integer Int -- Int32
SET     @Integer = 100
DECLARE @Decimal Decimal(3, 0)
SET     @Decimal = 100
DECLARE @Double Float -- Double
SET     @Double = 100

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(
	@Integer,
	@Decimal,
	@Double
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 33
DECLARE @param_1 Decimal
SET     @param_1 = 33
DECLARE @param_2 Float -- Double
SET     @param_2 = 33

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / @param,
	CAST([v].[Decimal] AS Float) / @param_1,
	[v].[Double] / @param_2
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4469Table]

