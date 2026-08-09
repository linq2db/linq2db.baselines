-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	([r].[Grace] * 10000000) / 600000000 > 30
ORDER BY
	[r].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[OptionalDurationRow] [r]
WHERE
	([r].[Required] * 10000000) / 600000000 > 30
ORDER BY
	[r].[Id]

