-- SqlServer.2012.MS SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take Int -- Int32
SET     @take = 5

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

