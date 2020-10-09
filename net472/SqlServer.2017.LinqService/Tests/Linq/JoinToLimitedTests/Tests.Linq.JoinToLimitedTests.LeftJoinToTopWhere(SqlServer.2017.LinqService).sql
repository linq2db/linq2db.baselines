BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[o].[ParentID], 
	[o].[Value1], 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Parent] [o]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[x].[ParentID], 
				[x].[ChildID]
			FROM
				[Child] [x]
			WHERE
				[x].[ParentID] = [o].[ParentID]
		) [t1]

