-- Access.Jet.OleDb AccessOleDb
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[l].[ItemId],
	[l].[Log]
FROM
	[ItemLog] [l]
WHERE
	[l].[ItemId] IN (1, 2)
ORDER BY
	[l].[Id]

