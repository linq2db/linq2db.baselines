-- SqlServer.2017.MS SqlServer.2017
-- Command 1
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[GroupId],
	[t1].[Name]
FROM
	[BatchItem] [t1]

-- Command 2
DECLARE @Item1 Int -- Int32
SET     @Item1 = 2

SELECT
	[t1].[Item1_1],
	IIF([t1].[Item1] IS NOT NULL, @Item1, NULL)
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT
				@Item1 as [Item1],
				1 as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] = 1
		) [t1] ON 1=1
-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	1
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] = 1

