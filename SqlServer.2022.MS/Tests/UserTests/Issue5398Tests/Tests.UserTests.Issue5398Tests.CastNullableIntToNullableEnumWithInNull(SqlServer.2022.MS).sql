-- SqlServer.2022.MS SqlServer.2022

SELECT
	[i].[Id]
FROM
	[TestEnumTable] [i]
WHERE
	([i].[Value] IN (1) OR [i].[Value] IS NULL)
ORDER BY
	[i].[Id]

