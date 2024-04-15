BeforeExecute
-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip ROWS FETCH NEXT 5 ROWS ONLY 

BeforeExecute
-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip ROWS FETCH NEXT 5 ROWS ONLY 

