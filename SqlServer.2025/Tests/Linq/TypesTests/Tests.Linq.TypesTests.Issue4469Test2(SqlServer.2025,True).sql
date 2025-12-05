-- SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	CAST([v].[Integer] AS Decimal(18, 10)) / 33,
	[v].[Decimal] / 33,
	[v].[Double] / 33
FROM
	[Issue4469Table] [v]

