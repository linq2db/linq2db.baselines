-- SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = 1

SELECT TOP (@n)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

