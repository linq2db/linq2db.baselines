-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Group_1],
	[t1].[Date_1],
	[t1].[Amount],
	[t1].[IsActive],
	[t1].[Priority]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY CASE
				WHEN [e].[Priority] IS NULL THEN 0
				ELSE 1
			END, [e].[Priority] DESC, [e].[Id], [e].[Date]) as [RowNumber],
			[e].[Priority],
			[e].[Id],
			[e].[Date] as [Date_1],
			[e].[Name],
			[e].[Group] as [Group_1],
			[e].[Amount],
			[e].[IsActive]
		FROM
			[TestData] [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	CASE
		WHEN [t1].[Priority] IS NULL THEN 0
		ELSE 1
	END,
	[t1].[Priority] DESC,
	[t1].[Id],
	[t1].[Date_1]

-- SqlServer.2008

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

