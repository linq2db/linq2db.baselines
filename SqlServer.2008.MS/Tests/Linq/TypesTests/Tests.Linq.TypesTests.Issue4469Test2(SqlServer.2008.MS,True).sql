BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4469Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4469Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4469Table]', N'U') IS NULL)
	CREATE TABLE [Issue4469Table]
	(
		[Integer] Int            NOT NULL,
		[Decimal] Decimal(10, 5) NOT NULL,
		[Double]  Float          NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [Issue4469Table]
(
	[Integer],
	[Decimal],
	[Double]
)
VALUES
(100,100,100)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(38, 17)) / 33,
	[v].[Decimal] / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4469Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4469Table]

