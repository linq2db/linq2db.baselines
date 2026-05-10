-- Access.Ace.OleDb AccessOleDb

SELECT
	RTRIM([t].[VarCharColumn] + '   ')
FROM
	[StringTrimTable] [t]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

