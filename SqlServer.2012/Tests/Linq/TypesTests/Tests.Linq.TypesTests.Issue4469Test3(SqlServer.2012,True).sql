BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4469Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4469Table]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4469Table]', N'U') IS NULL)
	CREATE TABLE [Issue4469Table]
	(
		[Integer] Int            NOT NULL,
		[Decimal] Decimal(10, 5) NOT NULL,
		[Double]  Float          NOT NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(100,100,100)

BeforeExecute
-- SqlServer.2012

SELECT TOP (2)
	CAST([v].[Integer] AS Float) / 33,
	CAST([v].[Decimal] AS Float) / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4469Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4469Table]

