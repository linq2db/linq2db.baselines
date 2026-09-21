-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Value_1]
FROM
	(
		SELECT
			CAST(N'Q_ONE' AS NVarChar(4000)) as [Name],
			[row_1].[Id],
			[row_1].[Q_ONE] as [Value_1]
		FROM
			[AliasedQuarterly] [row_1]
		WHERE
			[row_1].[Q_ONE] IS NOT NULL
		UNION ALL
		SELECT
			CAST(N'Q_TWO' AS NVarChar(4000)) as [Name],
			[row_2].[Id],
			[row_2].[Q_TWO] as [Value_1]
		FROM
			[AliasedQuarterly] [row_2]
		WHERE
			[row_2].[Q_TWO] IS NOT NULL
	) [t1]
ORDER BY
	[t1].[Name]

