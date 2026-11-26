-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Half],
	[t1].[A],
	[t1].[B]
FROM
	(
		SELECT
			CStr('H1') as [Half],
			[row_1].[Id],
			[row_1].[Jan] as [A],
			[row_1].[Feb] as [B]
		FROM
			[MonthlySales] [row_1]
		UNION ALL
		SELECT
			CStr('H2') as [Half],
			[row_2].[Id],
			[row_2].[Mar] as [A],
			[row_2].[Apr] as [B]
		FROM
			[MonthlySales] [row_2]
		UNION ALL
		SELECT
			CStr('H3') as [Half],
			[row_3].[Id],
			[row_3].[May] as [A],
			[row_3].[Jun] as [B]
		FROM
			[MonthlySales] [row_3]
	) [t1]
ORDER BY
	[t1].[Half]

