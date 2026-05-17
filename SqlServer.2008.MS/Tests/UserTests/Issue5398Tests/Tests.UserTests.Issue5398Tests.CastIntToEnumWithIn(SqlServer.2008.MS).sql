-- SqlServer.2008.MS SqlServer.2008

SELECT
	[i].[Id]
FROM
	[TestEnumTable] [i]
WHERE
	[i].[Value] IN (1, 3)
ORDER BY
	[i].[Id]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestEnumTable] [t1]

