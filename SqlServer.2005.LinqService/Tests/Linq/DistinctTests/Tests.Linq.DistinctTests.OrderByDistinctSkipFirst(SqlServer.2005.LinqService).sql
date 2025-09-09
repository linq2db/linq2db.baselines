BeforeExecute
-- SqlServer.2005 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t4].[F2]
FROM
	(
		SELECT DISTINCT
			[t3].[F1],
			[t3].[F2]
		FROM
			(
				SELECT
					[t2].[F1],
					[t2].[F2]
				FROM
					(
						SELECT
							[t1].[F1],
							[t1].[F2],
							ROW_NUMBER() OVER (ORDER BY [t1].[F3] DESC) as [RN]
						FROM
							[DistinctOrderByTable] [t1]
					) [t2]
				WHERE
					[t2].[RN] > @skip
			) [t3]
	) [t4]

