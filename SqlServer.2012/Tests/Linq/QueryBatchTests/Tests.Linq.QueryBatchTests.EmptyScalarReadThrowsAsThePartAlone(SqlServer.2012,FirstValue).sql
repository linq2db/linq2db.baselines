-- SqlServer.2012
SELECT TOP (1)
	[i].[Id]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

-- SqlServer.2012
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
			[i].[Id]
		FROM
			[BatchItem] [i]
		WHERE
			[i].[Id] > 100
	)

