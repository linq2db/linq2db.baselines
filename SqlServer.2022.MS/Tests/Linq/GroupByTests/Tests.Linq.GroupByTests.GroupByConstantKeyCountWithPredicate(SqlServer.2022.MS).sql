-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (1)
	COUNT(IIF([t].[Status] = 3, 1, NULL))
FROM
	[GroupByConstantKeyTable] [t]
WHERE
	[t].[MyOtherId] = 12

