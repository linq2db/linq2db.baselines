﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[ChildID]
FROM
	[Parent] [p_1]
		OUTER APPLY (
			SELECT TOP (@take)
				[p].[ChildID]
			FROM
				[Child] [p]
		) [t1]

