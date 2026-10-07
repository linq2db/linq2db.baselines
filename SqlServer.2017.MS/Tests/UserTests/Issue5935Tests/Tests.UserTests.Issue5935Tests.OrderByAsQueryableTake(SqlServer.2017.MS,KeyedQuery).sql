-- SqlServer.2017.MS SqlServer.2017
SELECT
	[i].[Value],
	[i].[Id]
FROM
	[Item] [i]
ORDER BY
	[i].[Id]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	[k_1].[item],
	[d_1].[Id],
	[d_1].[ItemId],
	[d_1].[Log]
FROM
	(VALUES
		(1), (2)
	) [k_1]([item])
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Id],
				[d].[ItemId],
				[d].[Log]
			FROM
				[ItemLog] [d]
			WHERE
				[k_1].[item] = [d].[ItemId]
			ORDER BY
				[d].[Id] DESC
		) [d_1]

