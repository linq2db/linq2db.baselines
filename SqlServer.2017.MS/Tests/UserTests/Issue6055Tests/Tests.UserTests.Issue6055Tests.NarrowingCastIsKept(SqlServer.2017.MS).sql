-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	CAST([r].[A] + [r].[B] AS Decimal(18, 10))
FROM
	[DecimalTable] [r]

