﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT TOP (@take)
			1 as [c1]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

