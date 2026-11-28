-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[Half],
	[t1].[A],
	[t1].[B]
FROM
	(
		SELECT
			CAST(N'H1' AS NVarChar(4000)) as [Half],
			[row_1].[Id],
			[row_1].[Jan] as [A],
			[row_1].[Feb] as [B]
		FROM
			[MonthlySales] [row_1]
		UNION ALL
		SELECT
			CAST(N'H2' AS NVarChar(4000)) as [Half],
			[row_2].[Id],
			[row_2].[Mar] as [A],
			[row_2].[Apr] as [B]
		FROM
			[MonthlySales] [row_2]
		UNION ALL
		SELECT
			CAST(N'H3' AS NVarChar(4000)) as [Half],
			[row_3].[Id],
			[row_3].[May] as [A],
			[row_3].[Jun] as [B]
		FROM
			[MonthlySales] [row_3]
	) [t1]
ORDER BY
	[t1].[Half]

