-- SqlServer.2017.MS SqlServer.2017
DECLARE @bound DateTime2
SET     @bound = DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	IIF(Coalesce([j].[Value1], 0) < 5, N'a', N'b'),
	Abs(Coalesce([j].[Value1], 0) - 1),
	IIF([j].[Date] IS NULL, 1, DatePart(year, [j].[Date])),
	CASE
		WHEN [j].[Date] IS NULL THEN N'n'
		WHEN [j].[Date] > @bound THEN N'y'
		ELSE N'n'
	END,
	CASE
		WHEN [j].[Date] IS NULL THEN N'y'
		WHEN [j].[Date] < @bound THEN N'y'
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

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

