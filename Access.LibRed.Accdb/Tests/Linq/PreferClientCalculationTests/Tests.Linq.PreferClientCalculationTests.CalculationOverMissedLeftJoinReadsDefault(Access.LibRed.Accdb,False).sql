-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @bound  -- DateTime
SET     @bound = #2000-01-01#

SELECT
	[e].[Id],
	CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END + 1,
	CASE
		WHEN [j].[Value1] IS NULL OR [j].[Value1] < 5 THEN 'a'
		ELSE 'b'
	END,
	Abs(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END - 1),
	CASE
		WHEN CASE
			WHEN [j].[Date] IS NULL THEN #0100-01-01#
			ELSE [j].[Date]
		END > CVar(@bound)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN CASE
			WHEN [j].[Date] IS NULL THEN #0100-01-01#
			ELSE [j].[Date]
		END < CVar(@bound)
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN CASE
			WHEN [j].[Date] IS NULL THEN #0100-01-01#
			ELSE [j].[Date]
		END > [e].[Date]
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN CASE
			WHEN [j].[Date] IS NULL THEN #0100-01-01#
			ELSE [j].[Date]
		END <= [e].[Date]
			THEN 'y'
		ELSE 'n'
	END
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
	DatePart('yyyy', CASE
		WHEN [j].[Date] IS NULL THEN #0100-01-01#
		ELSE [j].[Date]
	END)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

