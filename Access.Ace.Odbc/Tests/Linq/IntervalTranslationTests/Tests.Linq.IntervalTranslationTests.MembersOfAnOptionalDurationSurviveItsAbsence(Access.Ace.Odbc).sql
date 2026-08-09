-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id],
	Fix(([r].[Grace] * 10000000) / 600000000) MOD 60,
	([r].[Grace] * 10000000) / 600000000,
	([r].[Required] * 10000000) / 600000000
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

