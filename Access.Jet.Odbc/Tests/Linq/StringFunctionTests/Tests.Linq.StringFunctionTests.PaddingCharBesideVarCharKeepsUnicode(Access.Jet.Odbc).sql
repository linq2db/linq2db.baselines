-- Access.Jet.Odbc AccessODBC
SELECT
	[t].[Id],
	IIF([t].[VarCharColumn] IS NULL OR Len([t].[VarCharColumn]) >= 8, [t].[VarCharColumn], STRING(8 - Len([t].[VarCharColumn]), 'Ж') + [t].[VarCharColumn])
FROM
	[StringTypesTable] [t]

-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

