-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (1)
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100
ORDER BY
	[i].[Id]

-- SqlServer.2025.MS SqlServer.2025
-- Command 1
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]

-- Command 2
SELECT
	(
		SELECT TOP (1)
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
		ORDER BY
			[i].[Id]
	)
