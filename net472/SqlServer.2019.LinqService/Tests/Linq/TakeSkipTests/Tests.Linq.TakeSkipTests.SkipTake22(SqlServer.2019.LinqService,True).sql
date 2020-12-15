BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @skip_5 Int -- Int32
SET     @skip_5 = 2
DECLARE @skip_4 Int -- Int32
SET     @skip_4 = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip_5 ROWS FETCH NEXT @skip_4 ROWS ONLY 

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @skip_6 Int -- Int32
SET     @skip_6 = 2
DECLARE @skip_5 Int -- Int32
SET     @skip_5 = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip_6 ROWS FETCH NEXT @skip_5 ROWS ONLY 

