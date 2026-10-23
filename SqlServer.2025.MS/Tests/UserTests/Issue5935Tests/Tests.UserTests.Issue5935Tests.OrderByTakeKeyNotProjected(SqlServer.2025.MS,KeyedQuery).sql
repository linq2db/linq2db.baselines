-- SqlServer.2025.MS SqlServer.2025
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[k_1].[item],
	[d_1].[Log]
FROM
	(VALUES
		(1), (2)
	) [k_1]([item])
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Log]
			FROM
				[ItemLog] [d]
			WHERE
				[k_1].[item] = [d].[ItemId]
			ORDER BY
				[d].[Id]
		) [d_1]

