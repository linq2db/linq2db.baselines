-- Access.Ace.Odbc AccessODBC
DECLARE @suffix NVarChar(3) -- String
SET     @suffix = 'Жук'

SELECT
	[t].[Id],
	RTRIM(Replace([t].[CharColumn], 'A', ?)),
	RTRIM(Replace([t].[CharColumn], 'A', 'Ж'))
FROM
	[StringTypesTable] [t]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

