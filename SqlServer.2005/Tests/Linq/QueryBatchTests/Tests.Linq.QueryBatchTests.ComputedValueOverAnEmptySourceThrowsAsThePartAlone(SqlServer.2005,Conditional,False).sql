-- SqlServer.2005
SELECT TOP (1)
	CASE
		WHEN [i].[Id] > 0 THEN 1
		ELSE 0
	END,
	[i].[Id],
	[i].[GroupId]
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

-- SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
;
SELECT
	[t1].[Item1],
	[t1].[c1],
	[t1].[Id],
	[t1].[GroupId]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (1)
				CASE
					WHEN [i].[Id] > 0 THEN 1
					ELSE 0
				END as [c1],
				[i].[Id],
				[i].[GroupId],
				1 as [Item1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
		) [t1] ON 1=1

