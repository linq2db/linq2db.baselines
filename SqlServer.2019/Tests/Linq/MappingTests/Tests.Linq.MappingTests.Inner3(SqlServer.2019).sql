﻿BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[Value1] = 1

