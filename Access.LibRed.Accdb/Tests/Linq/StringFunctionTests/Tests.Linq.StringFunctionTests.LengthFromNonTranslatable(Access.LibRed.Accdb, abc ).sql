-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Str],
	Len([t].[Str]),
	'original-' + IIF([t].[Str] IS NULL, '', [t].[Str])
FROM
	[TestLengthModel] [t]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

