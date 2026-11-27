-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	COUNT(IIF([t].[Status] = 3, 1, NULL))
FROM
	[GroupByConstantKeyTable] [t]
WHERE
	[t].[MyOtherId] = 12

