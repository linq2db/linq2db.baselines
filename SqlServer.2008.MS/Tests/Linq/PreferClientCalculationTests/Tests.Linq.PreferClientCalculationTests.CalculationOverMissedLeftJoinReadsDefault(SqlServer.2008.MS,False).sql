-- SqlServer.2008.MS SqlServer.2008
SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	CASE
		WHEN Coalesce([j].[Value1], 0) < 5 THEN N'a'
		ELSE N'b'
	END,
	Abs(Coalesce([j].[Value1], 0) - 1),
	CASE
		WHEN [j].[Date] IS NULL THEN 1
		ELSE DatePart(year, [j].[Date])
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN N'n'
		WHEN [j].[Date] > CAST(N'2000-01-01' AS DateTime2) THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN N'y'
		WHEN [j].[Date] < CAST(N'2000-01-01' AS DateTime2) THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN N'n'
		WHEN [j].[Date] > [e].[Date] THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN N'y'
		WHEN [j].[Date] <= [e].[Date] THEN N'y'
		ELSE N'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

