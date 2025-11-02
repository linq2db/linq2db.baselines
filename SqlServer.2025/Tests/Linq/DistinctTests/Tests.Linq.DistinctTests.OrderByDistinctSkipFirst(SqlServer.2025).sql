-- SqlServer.2025 SqlServer.2022
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t3].[F2]
FROM
	(
		SELECT DISTINCT
			[t2].[F1],
			[t2].[F2]
		FROM
			(
				SELECT
					[t1].[F1],
					[t1].[F2]
				FROM
					[DistinctOrderByTable] [t1]
				ORDER BY
					[t1].[F3] DESC
				OFFSET @skip ROWS
			) [t2]
	) [t3]

