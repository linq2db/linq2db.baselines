-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[i].[Id]
FROM
	[TestEnumTable] [i]
WHERE
	([i].[Value] IN (1) OR [i].[Value] IN (3))
ORDER BY
	[i].[Id]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TestEnumTable] [t1]

