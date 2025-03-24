﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[p_1].[ParentID],
	[c_1].[ChildID]
FROM
	(
		SELECT TOP (@take)
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
	) [p_1]
		INNER JOIN [Child] [c_1] ON [p_1].[ParentID] = [c_1].[ParentID]

