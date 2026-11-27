-- SqlServer.2017
SELECT
	[i].[Id]
FROM
	[InEnumTable] [i]
WHERE
	[i].[Value] IN (1, 3)
ORDER BY
	[i].[Id]

-- SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[InEnumTable] [t1]

