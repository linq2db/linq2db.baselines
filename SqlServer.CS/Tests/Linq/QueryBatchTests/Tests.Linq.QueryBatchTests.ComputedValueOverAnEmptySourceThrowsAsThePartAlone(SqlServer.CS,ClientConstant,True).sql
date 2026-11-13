-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	1
FROM
	[BatchItem] [i]
WHERE
	[i].[Id] > 100

-- SqlServer.CS SqlServer.2025
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
			SELECT
				@Item1 as [Item1],
				1 as [Item1_1]
			FROM
				[BatchItem] [i]
			WHERE
				[i].[Id] > 100
		) [t1] ON 1=1

