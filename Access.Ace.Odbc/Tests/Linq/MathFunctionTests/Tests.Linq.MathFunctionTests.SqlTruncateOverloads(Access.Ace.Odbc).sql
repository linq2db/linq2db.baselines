-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id],
	IIF([r].[D] >= 0, Int([r].[D]), -Int(-[r].[D])),
	IIF([r].[F] >= 0, Int([r].[F]), -Int(-[r].[F])),
	IIF([r].[N] >= 0, Int([r].[N]), -Int(-[r].[N])),
	IIF([r].[G] >= 0, Int([r].[G]), -Int(-[r].[G])),
	IIF([r].[D] >= 0, Int([r].[D]), -Int(-[r].[D])),
	IIF([r].[F] >= 0, Int([r].[F]), -Int(-[r].[F]))
FROM
	[TruncateValues] [r]
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[D],
	[t1].[F],
	[t1].[N],
	[t1].[G]
FROM
	[TruncateValues] [t1]

