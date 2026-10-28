-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	CAST(Power(CAST([r].[D] AS Float), CAST(0.00005 AS Float)) AS Decimal(18, 4)) + [r].[D]
FROM
	[PowScale] [r]

