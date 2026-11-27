-- SqlServer.2017.MS SqlServer.2017
SELECT
	[c_1].[Key]
FROM
	[GroupByKeyValueTable] [c_1]
GROUP BY
	[c_1].[Key]
ORDER BY
	SUM([c_1].[Value]) DESC

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[Key],
	[t1].[Value]
FROM
	[GroupByKeyValueTable] [t1]

