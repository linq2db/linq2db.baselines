BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

