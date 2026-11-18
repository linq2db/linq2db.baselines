-- Access.Ace.OleDb AccessOleDb
DECLARE @dash VarChar(1) -- AnsiString
SET     @dash = '-'

SELECT
	[a].[Id],
	[b].[Id] as [B_1]
FROM
	[StringTypesTable] [a],
	[StringTypesTable] [b]
WHERE
	[b].[VarCharColumn] = RTRIM(Replace([a].[CharColumn], '?', @dash)) OR
	[b].[VarCharColumn] IS NULL AND [a].[CharColumn] IS NULL

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[CharColumn],
	[t1].[NCharColumn],
	[t1].[VarCharColumn],
	[t1].[NVarCharColumn]
FROM
	[StringTypesTable] [t1]

