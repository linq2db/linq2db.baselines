-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[i].[Value]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] = 3

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
;
SELECT
	(
		SELECT TOP (1)
			[i].[Value]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] = 3
	)

