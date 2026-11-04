-- SqlServer.2019.MS SqlServer.2019
SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] = [m_1].[ParentID]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

