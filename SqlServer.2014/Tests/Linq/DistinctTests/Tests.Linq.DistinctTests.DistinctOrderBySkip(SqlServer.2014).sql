BeforeExecute
-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t2].[F2]
FROM
	(
		SELECT DISTINCT
			[t1].[F1],
			[t1].[F2]
		FROM
			[DistinctOrderByTable] [t1]
	) [t2]
ORDER BY
	[t2].[F1] DESC
OFFSET @skip ROWS

