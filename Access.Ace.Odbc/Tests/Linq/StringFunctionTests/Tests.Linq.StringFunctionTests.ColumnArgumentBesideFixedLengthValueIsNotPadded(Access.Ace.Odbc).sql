-- Access.Ace.Odbc AccessODBC
SELECT
	RTRIM(Replace([t].[NCharColumn], [t].[VarCharColumn], 'x')),
	RTRIM(Replace([t].[CharColumn], [t].[VarCharColumn], 'x'))
FROM
	[StringTypesTable] [t]
ORDER BY
	[t].[Id]

