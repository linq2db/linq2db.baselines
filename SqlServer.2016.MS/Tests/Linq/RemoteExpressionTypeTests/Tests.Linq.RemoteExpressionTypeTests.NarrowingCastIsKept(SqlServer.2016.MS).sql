-- SqlServer.2016.MS SqlServer.2016
SELECT TOP (2)
	CAST([r].[A] + [r].[B] AS Decimal(18, 10))
FROM
	[DecimalTable] [r]

