BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Child] [t1]

