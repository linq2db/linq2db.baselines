﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	Min([t1].[ParentID])
FROM
	(
		SELECT TOP (@take)
			[p].[ParentID]
		FROM
			[Parent] [p]
		ORDER BY
			[p].[ParentID]
	) [t1]

