-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	CAST([r].[A] + [r].[B] AS Decimal(18, 10))
FROM
	[DecimalTable] [r]

