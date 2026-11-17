-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Str],
	Len([t].[Str]),
	'original-' + CASE
		WHEN [t].[Str] IS NULL THEN ''
		ELSE [t].[Str]
	END
FROM
	[TestLengthModel] [t]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Str]
FROM
	[TestLengthModel] [t1]

