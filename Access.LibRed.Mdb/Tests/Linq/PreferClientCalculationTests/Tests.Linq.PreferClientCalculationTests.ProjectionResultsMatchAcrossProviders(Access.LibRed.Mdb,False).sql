-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	[e].[Value1] + 12345
FROM
	[ClientCalcEntity] [e]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [e].[Id] > 1 THEN [e].[Value1]
		ELSE [e].[Value2]
	END
FROM
	[ClientCalcEntity] [e]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	-[e].[Value1]
FROM
	[ClientCalcEntity] [e]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[e].[Value1] + ABS([e].[Value2])
FROM
	[ClientCalcEntity] [e]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[e].[Id],
	CASE
		WHEN [e].[Name] IS NULL THEN ''
		ELSE [e].[Name]
	END + ' ' + CASE
		WHEN [e].[Name] IS NULL THEN ''
		ELSE [e].[Name]
	END
FROM
	[ClientCalcEntity] [e]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

