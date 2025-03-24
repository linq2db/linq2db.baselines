﻿BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @offset Int -- Int32
SET     @offset = 0

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [t]
		CROSS APPLY GetParentByID(([t].[ParentID] + @offset)) [p]

BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @offset Int -- Int32
SET     @offset = 0

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [t]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = [t].[ParentID] + @offset

