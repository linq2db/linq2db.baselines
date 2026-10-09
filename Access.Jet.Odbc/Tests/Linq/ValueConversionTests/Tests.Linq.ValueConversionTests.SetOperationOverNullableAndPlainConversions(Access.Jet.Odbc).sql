-- Access.Jet.Odbc AccessODBC
SELECT
	[t1].[c1],
	[t1].[Id],
	[t1].[Date_1]
FROM
	(
		SELECT
			[r].[Id],
			IIF(False, #0001-01-01#, NULL) as [c1],
			[r].[Date] as [Date_1]
		FROM
			[Issue5976RowA] [r]
		UNION ALL
		SELECT
			[r_1].[Id],
			[r_1].[Date] as [c1],
			IIF(False, #0001-01-01#, NULL) as [Date_1]
		FROM
			[Issue5976RowC] [r_1]
	) [t1]
ORDER BY
	[t1].[Id]

