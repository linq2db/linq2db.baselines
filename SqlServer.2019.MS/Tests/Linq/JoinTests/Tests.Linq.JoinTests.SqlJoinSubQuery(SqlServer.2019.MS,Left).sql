﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019
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
		LEFT JOIN [Child] [c_1] ON [p_1].[ParentID] = [c_1].[ParentID]

