BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 3
DECLARE @skip Int -- Int32
SET     @skip = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
OFFSET @skip_1 ROWS FETCH NEXT @skip ROWS ONLY 

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @skip_1 Int -- Int32
SET     @skip_1 = 3
DECLARE @skip Int -- Int32
SET     @skip = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
OFFSET @skip_1 ROWS FETCH NEXT @skip ROWS ONLY 

