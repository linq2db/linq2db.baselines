-- SqlServer.2014
SELECT
	[t1].[RowNumber_1],
	[t1].[RowNumber_2],
	[t1].[Group_1],
	[t1].[RowNumber_3],
	[t1].[Amount],
	[t1].[IsActive],
	[t1].[Priority]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Id], [e].[Name] ORDER BY [e].[Name], [e].[Date] DESC) as [RowNumber],
			[e].[Id] as [RowNumber_1],
			[e].[Name] as [RowNumber_2],
			[e].[Date] as [RowNumber_3],
			[e].[Group] as [Group_1],
			[e].[Amount],
			[e].[IsActive],
			[e].[Priority]
		FROM
			[TestData] [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_2],
	[t1].[RowNumber_3] DESC

-- SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Group],
	[t1].[Date],
	[t1].[Amount],
	[t1].[IsActive],
	[t1].[Priority]
FROM
	[TestData] [t1]

