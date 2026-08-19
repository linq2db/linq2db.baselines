-- Access.Jet.OleDb AccessOleDb
SELECT
	IIF(False, False, NULL),
	[x].[Id],
	[x].[Flag]
FROM
	[ConvertedFlagRow] [x]
UNION ALL
SELECT
	CBool(True),
	[x_1].[Id],
	IIF(False, '', NULL)
FROM
	[ConvertedFlagRow] [x_1]

