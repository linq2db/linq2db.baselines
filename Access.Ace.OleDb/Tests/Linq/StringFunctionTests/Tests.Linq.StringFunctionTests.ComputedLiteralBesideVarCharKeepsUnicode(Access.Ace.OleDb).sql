-- Access.Ace.OleDb AccessOleDb
SELECT
	[t].[Id],
	Replace([t].[VarCharColumn], 'A', 'Ж'),
	Replace([t].[VarCharColumn], 'A', 'Ж'),
	IIF([t].[VarCharColumn] IS NULL OR Len([t].[VarCharColumn]) >= 8, [t].[VarCharColumn], STRING(8 - Len([t].[VarCharColumn]), 'Ж') + [t].[VarCharColumn])
FROM
	[StringTypesTable] [t]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

