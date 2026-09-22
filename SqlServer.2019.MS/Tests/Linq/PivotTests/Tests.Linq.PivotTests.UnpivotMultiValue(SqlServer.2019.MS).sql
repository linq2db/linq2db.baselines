-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Quarter],
	[t1].[M1],
	[t1].[M2],
	[t1].[M3]
FROM
	(
		SELECT
			CAST(N'Q1' AS NVarChar(4000)) as [Quarter],
			[row_1].[Id],
			[row_1].[Jan] as [M1],
			[row_1].[Feb] as [M2],
			[row_1].[Mar] as [M3]
		FROM
			[MonthlySales] [row_1]
		UNION ALL
		SELECT
			CAST(N'Q2' AS NVarChar(4000)) as [Quarter],
			[row_2].[Id],
			[row_2].[Apr] as [M1],
			[row_2].[May] as [M2],
			[row_2].[Jun] as [M3]
		FROM
			[MonthlySales] [row_2]
	) [t1]
ORDER BY
	[t1].[Quarter]

