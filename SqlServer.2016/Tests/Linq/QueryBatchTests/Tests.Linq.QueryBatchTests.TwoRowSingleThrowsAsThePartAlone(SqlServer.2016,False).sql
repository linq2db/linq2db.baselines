-- SqlServer.2016
SELECT TOP (2)
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] < 3

-- SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
;
SELECT
	[i].[Id],
	[i].[Value],
	[i].[GroupId],
	[i].[Name]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] < 3

