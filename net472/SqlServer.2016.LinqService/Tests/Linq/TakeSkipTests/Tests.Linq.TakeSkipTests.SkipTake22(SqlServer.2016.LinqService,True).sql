BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @skip_3 Int -- Int32
SET     @skip_3 = 2
DECLARE @skip_2 Int -- Int32
SET     @skip_2 = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip_3 ROWS FETCH NEXT @skip_2 ROWS ONLY 

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @skip_4 Int -- Int32
SET     @skip_4 = 2
DECLARE @skip_3 Int -- Int32
SET     @skip_3 = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip_4 ROWS FETCH NEXT @skip_3 ROWS ONLY 

