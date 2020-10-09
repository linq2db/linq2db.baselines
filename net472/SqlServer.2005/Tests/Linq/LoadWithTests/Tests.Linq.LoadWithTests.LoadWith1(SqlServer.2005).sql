BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t].[ParentID], 
	[t].[ChildID], 
	[a_Parent].[ParentID], 
	[a_Parent].[Value1]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [a_Parent] ON [t].[ParentID] = [a_Parent].[ParentID]

