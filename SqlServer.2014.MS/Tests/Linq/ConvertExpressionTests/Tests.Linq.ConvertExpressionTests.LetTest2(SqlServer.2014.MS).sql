﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(
		SELECT TOP (@take)
			1
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	) IS NOT NULL

