-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	CASE
		WHEN 0 IN (CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END, 5)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END, 5)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END, 5)
			THEN 'y'
		ELSE 'n'
	END
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
	[e].[Id],
	CASE
		WHEN 0 IN (CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END, 5)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END, 5)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN 0 IN (CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END, 5)
			THEN 'y'
		ELSE 'n'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

