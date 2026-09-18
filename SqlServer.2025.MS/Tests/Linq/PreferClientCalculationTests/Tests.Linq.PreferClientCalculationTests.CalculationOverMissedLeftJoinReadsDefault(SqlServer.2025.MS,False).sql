-- SqlServer.2025.MS SqlServer.2025
DECLARE @bound DateTime2
SET     @bound = DATETIME2FROMPARTS(2000, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	IIF(Coalesce([j].[Value1], 0) < 5, N'a', N'b'),
	Abs(Coalesce([j].[Value1], 0) - 1),
	[j].[Date],
	IIF(Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)) > @bound, N'y', N'n'),
	IIF(Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)) < @bound, N'y', N'n'),
	IIF(Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)) > [e].[Date], N'y', N'n'),
	IIF(Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)) <= [e].[Date], N'y', N'n')
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

