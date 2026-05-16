-- Access.Jet.OleDb AccessOleDb

SELECT
	RTRIM(IIF([t].[VarCharColumn] IS NULL, '', [t].[VarCharColumn]) + '   ')
FROM
	[StringTrimTable] [t]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTrimTable] [t1]

