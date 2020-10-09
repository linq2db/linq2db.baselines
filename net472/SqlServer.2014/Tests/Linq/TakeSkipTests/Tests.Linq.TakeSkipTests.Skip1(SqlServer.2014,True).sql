BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	1
OFFSET @skip ROWS

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 4

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	1
OFFSET @skip ROWS

