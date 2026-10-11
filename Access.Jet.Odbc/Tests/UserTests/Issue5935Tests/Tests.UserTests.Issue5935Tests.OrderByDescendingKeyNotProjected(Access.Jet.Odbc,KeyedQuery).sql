-- Access.Jet.Odbc AccessODBC
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[l].[ItemId],
	[l].[Log]
FROM
	[ItemLog] [l]
WHERE
	[l].[ItemId] IN (1, 2)
ORDER BY
	[l].[Id] DESC

