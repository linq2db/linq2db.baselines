-- SqlServer.2005.MS SqlServer.2005
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

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

