-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	CASE
		WHEN [j].[Id] IS NULL THEN -1
		ELSE CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END + 1
	END,
	[j].[Value1],
	CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[j].[Id],
	[j].[Value1],
	[j].[Date],
	[j].[Flag],
	[j].[Name]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

