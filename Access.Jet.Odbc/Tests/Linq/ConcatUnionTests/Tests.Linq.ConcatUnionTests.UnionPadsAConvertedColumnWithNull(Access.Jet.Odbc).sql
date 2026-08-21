-- Access.Jet.Odbc AccessODBC
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

