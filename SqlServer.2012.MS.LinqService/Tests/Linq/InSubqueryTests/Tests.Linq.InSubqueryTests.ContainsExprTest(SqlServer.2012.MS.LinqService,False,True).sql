BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] + @n IN (
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

