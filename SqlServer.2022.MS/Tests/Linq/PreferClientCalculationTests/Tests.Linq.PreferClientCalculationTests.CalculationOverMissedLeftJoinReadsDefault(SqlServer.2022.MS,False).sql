-- SqlServer.2022.MS SqlServer.2022
SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	IIF(Coalesce([j].[Value1], 0) < 5, N'a', N'b'),
	Abs(Coalesce([j].[Value1], 0) - 1),
	IIF([j].[Date] IS NULL, 1, DatePart(year, [j].[Date])),
	CASE
		WHEN [j].[Date] IS NULL THEN N'n'
		WHEN [j].[Date] > DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 3)
			THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN N'y'
		WHEN [j].[Date] < DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 3)
			THEN N'y'
		ELSE N'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

