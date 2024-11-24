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

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(100,100,100)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @param Int -- Int32
SET     @param = 33

SELECT TOP (2)
	[v].[Integer] / @param,
	[v].[Decimal] / @param,
	[v].[Double] / @param
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue4469Table]

