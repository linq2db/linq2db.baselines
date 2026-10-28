-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Code]
FROM
	(
		SELECT
			[r].[Id],
			[r].[Code]
		FROM
			[SharedConverterRowA] [r]
		UNION
		SELECT
			[r_1].[Id],
			[r_1].[Code]
		FROM
			[SharedConverterRowB] [r_1]
	) [t1]
ORDER BY
	[t1].[Id]

