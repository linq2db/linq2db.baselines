-- SqlServer.2014.MS SqlServer.2014
SELECT
	[i].[Id]
FROM
	[InEnumTable] [i]
WHERE
	[i].[Value] IN (1, 3)
ORDER BY
	[i].[Id]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[InEnumTable] [t1]

