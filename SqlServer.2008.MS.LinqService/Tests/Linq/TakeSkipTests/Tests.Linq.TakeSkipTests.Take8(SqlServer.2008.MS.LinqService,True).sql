BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 3

SELECT TOP (@n)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

