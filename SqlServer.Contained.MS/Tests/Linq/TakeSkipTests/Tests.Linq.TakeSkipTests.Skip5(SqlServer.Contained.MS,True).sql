-- SqlServer.Contained.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID] DESC,
	[t1].[ParentID] + 1
OFFSET @skip ROWS

