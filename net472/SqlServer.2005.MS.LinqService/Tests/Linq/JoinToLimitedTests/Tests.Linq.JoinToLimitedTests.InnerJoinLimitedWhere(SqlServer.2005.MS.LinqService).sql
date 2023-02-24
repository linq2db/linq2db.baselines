﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[o].[ParentID],
	[o].[Value1],
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN (
			SELECT TOP (@take)
				[t1].[ParentID],
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [x] ON [x].[ParentID] = [o].[ParentID]

