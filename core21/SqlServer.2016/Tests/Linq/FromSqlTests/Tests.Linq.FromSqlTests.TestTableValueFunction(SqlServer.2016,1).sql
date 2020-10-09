BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @offset_1 Int -- Int32
SET     @offset_1 = 1

SELECT 
	[t].[ParentID], 
	[t].[ChildID], 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Child] [t]
		CROSS APPLY GetParentByID(([t].[ParentID] + @offset_1)) [p]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @offset_1 Int -- Int32
SET     @offset_1 = 1

SELECT 
	[t].[ParentID], 
	[t].[ChildID], 
	[p].[ParentID], 
	[p].[Value1]
FROM
	[Child] [t]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = [t].[ParentID] + @offset_1

