-- Access.Jet.Odbc AccessODBC
SELECT
	MAX([g_1].[Value])
FROM
	[ScaledDecimalRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	1.004
FROM
	[ScaledDecimalRow] [r]

-- Access.Jet.Odbc AccessODBC
SELECT
	IIF([r].[Id] > 0, [r].[Value], [r].[Value] + 1)
FROM
	[ScaledDecimalRow] [r]
UNION ALL
SELECT
	1.004
FROM
	[ScaledDecimalRow] [r_1]

