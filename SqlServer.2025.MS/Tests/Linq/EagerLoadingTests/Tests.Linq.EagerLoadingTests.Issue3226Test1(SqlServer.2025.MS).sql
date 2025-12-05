-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[x_1].[Id],
	[x_1].[Text]
FROM
	(
		SELECT
			[x].[Id],
			[x].[Text],
			(
				SELECT
					SUM([a_Values].[Value])
				FROM
					[ItemValue] [a_Values]
				WHERE
					[x].[Id] = [a_Values].[ItemId]
			) as [Sum_1]
		FROM
			[Item] [x]
	) [x_1]
ORDER BY
	[x_1].[Sum_1]

