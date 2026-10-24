-- SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
OFFSET @n ROWS

