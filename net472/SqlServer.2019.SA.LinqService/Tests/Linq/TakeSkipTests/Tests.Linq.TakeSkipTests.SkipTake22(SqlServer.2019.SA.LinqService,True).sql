BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @skip_7 Int -- Int32
SET     @skip_7 = 2
DECLARE @skip_6 Int -- Int32
SET     @skip_6 = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip_7 ROWS FETCH NEXT @skip_6 ROWS ONLY 

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @skip_8 Int -- Int32
SET     @skip_8 = 2
DECLARE @skip_7 Int -- Int32
SET     @skip_7 = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC
OFFSET @skip_8 ROWS FETCH NEXT @skip_7 ROWS ONLY 

