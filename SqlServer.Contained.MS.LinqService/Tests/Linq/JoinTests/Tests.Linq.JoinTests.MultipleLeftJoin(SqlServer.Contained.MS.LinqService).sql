﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[parent_1].[ParentID],
	[childTemp].[ChildID],
	[grandChildTemp].[GrandChildID]
FROM
	[Parent] [parent_1]
		LEFT JOIN [Child] [childTemp] ON [parent_1].[ParentID] = [childTemp].[ParentID]
		LEFT JOIN [GrandChild] [grandChildTemp] ON [parent_1].[ParentID] = [grandChildTemp].[ParentID]

