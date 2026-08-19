-- Access.Ace.Odbc AccessODBC
SELECT
	[r].[Id],
	Fix([r].[Grace] / 60) MOD 60,
	[r].[Grace] / 60,
	[r].[Required] / 60
FROM
	[OptionalDurationRow] [r]
ORDER BY
	[r].[Id]

