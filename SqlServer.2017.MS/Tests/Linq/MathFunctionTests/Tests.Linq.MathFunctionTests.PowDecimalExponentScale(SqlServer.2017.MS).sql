-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	CAST(Power(CAST([r].[D] AS Float), CAST(0.00005 AS Float)) AS Decimal(18, 4)) + [r].[D]
FROM
	[PowScale] [r]

