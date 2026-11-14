-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[Id],
	[x].[Flag]
FROM
	[ConvertedFlagRow] [x]
UNION
SELECT
	[x_1].[Id],
	IIF(False, '', NULL)
FROM
	[ConvertedFlagRow] [x_1]

