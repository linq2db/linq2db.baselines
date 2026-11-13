-- SqlServer.2012
DECLARE @Item1 Int -- Int32
SET     @Item1 = 2

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]
;
SELECT
	[t1].[Item1_1],
	IIF([t1].[Item1] IS NOT NULL, @Item1, NULL)
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (1)
				@Item1 as [Item1],
				1 as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] = 1
		) [t1] ON 1=1

-- SqlServer.2012
SELECT TOP (1)
	1
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] = 1

