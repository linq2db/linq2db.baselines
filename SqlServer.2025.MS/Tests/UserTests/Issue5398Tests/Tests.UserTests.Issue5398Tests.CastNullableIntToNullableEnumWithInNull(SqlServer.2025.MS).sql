-- SqlServer.2025.MS SqlServer.2025

SELECT
	[i].[Id]
FROM
	[TestEnumTable] [i]
WHERE
	([i].[Value] IN (1) OR [i].[Value] IS NULL)
ORDER BY
	[i].[Id]

