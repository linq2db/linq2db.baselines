-- SqlServer.2016.MS SqlServer.2016

SELECT
	[i].[Id]
FROM
	[TestEnumTable] [i]
WHERE
	[i].[Value] IN (1, 2)
ORDER BY
	[i].[Id]

