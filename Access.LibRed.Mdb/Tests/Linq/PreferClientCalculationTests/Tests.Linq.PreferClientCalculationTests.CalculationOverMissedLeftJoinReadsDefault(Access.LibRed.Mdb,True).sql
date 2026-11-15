-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	[j].[Value1],
	Abs(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END - 1) as [c1],
	[j].[Date] as [Date_1],
	[e].[Date] as [Date_2]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DatePart('yyyy', CASE
		WHEN [j].[Date] IS NULL THEN #0100-01-01#
		ELSE [j].[Date]
	END)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

