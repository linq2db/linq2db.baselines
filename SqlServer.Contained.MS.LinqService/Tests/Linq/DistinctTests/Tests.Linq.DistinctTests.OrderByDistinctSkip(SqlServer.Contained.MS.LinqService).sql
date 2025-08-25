﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
	[t2].[F1]
OFFSET @skip ROWS

