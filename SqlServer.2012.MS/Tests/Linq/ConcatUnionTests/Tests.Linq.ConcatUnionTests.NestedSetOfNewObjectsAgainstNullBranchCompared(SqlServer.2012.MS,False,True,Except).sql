-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[ParentID],
	[t1].[Child],
	[t1].[Child],
	[t1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID],
			NULL as [Child],
			NULL as [ChildID]
		FROM
			[Parent] [p]
		UNION ALL
		SELECT
			[p_1].[ParentID],
			[p_1].[ParentID] as [Child],
			[p_1].[ParentID] + 100 as [ChildID]
		FROM
			[Parent] [p_1]
	) [t1]
EXCEPT
SELECT
	[p_2].[ParentID],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p_2]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

