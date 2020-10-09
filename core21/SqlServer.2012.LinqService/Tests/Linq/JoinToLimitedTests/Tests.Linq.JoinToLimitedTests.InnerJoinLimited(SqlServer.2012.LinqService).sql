BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[o].[ParentID], 
	[o].[Value1], 
	[cg].[ParentID], 
	[cg].[ChildID]
FROM
	[Parent] [o]
		INNER JOIN ( 
			SELECT TOP (@take) 
				[t1].[ParentID], 
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [cg] ON [o].[ParentID] = [cg].[ParentID]

