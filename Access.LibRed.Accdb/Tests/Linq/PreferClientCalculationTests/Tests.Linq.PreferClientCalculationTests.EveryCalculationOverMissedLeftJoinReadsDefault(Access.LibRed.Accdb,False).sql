-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END + 1,
	CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END BOR 1,
	CASE
		WHEN [j].[Value1] IS NULL OR [j].[Value1] < 5 THEN 'a'
		ELSE 'b'
	END,
	CASE
		WHEN CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END IN (0)
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
	-CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END + 1,
	CASE
		WHEN NOT CASE
			WHEN [j].[Flag] IS NULL THEN False
			ELSE [j].[Flag]
		END
			THEN 't'
		ELSE 'f'
	END,
	CASE
		WHEN NOT (CASE
			WHEN [j].[Flag] IS NULL THEN False
			ELSE [j].[Flag]
		END OR [e].[Id] < 0)
			THEN 't'
		ELSE 'f'
	END,
	Abs(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END) + 1,
	'x' + CStr(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END),
	ABS(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END) + 1,
	CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END + 1,
	CASE
		WHEN [e].[Id] > 0 THEN CASE
			WHEN [j].[Value1] IS NULL THEN 0
			ELSE [j].[Value1]
		END
		ELSE 5
	END + 1,
	CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END + 1,
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
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

