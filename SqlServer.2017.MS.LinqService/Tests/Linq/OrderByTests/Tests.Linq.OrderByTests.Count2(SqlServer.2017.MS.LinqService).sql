﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	Count(*)
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

