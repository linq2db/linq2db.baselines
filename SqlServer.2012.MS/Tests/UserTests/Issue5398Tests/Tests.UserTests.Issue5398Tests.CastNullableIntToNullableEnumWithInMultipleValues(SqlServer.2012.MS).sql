-- SqlServer.2012.MS SqlServer.2012

SELECT
	[i].[Id]
FROM
	[TestEnumTable] [i]
WHERE
	[i].[Value] IN (1, 2)
ORDER BY
	[i].[Id]

