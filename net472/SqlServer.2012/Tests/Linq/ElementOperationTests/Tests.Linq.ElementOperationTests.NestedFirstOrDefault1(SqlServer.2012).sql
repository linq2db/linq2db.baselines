BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t2].[ParentID], 
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[t1].[ParentID], 
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [t2]

