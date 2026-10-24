-- SqlServer.Contained.MS SqlServer.2019
-- Batch 1
-- take = 2
SELECT TOP (@take)
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]

-- Batch 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)
-- SqlServer.Contained.MS SqlServer.2019
-- Batch 1
-- take = 4
SELECT TOP (@take)
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
ORDER BY
	[t1].[Id]

-- Batch 2
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[BatchItem] [t1]
	)
