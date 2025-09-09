BeforeExecute
-- SqlServer.2008 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t3].[F2]
FROM
	(
		SELECT
			[t2].[F2],
			ROW_NUMBER() OVER (ORDER BY [t2].[F1]) as [RN]
		FROM
			(
				SELECT DISTINCT
					[t1].[F1],
					[t1].[F2]
				FROM
					[DistinctOrderByTable] [t1]
			) [t2]
	) [t3]
WHERE
	[t3].[RN] > @skip

