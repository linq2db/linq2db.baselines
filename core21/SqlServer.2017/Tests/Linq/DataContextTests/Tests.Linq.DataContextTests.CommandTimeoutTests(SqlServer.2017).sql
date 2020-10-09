BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Child] [t1]

