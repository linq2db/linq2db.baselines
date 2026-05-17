-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[t1].[ParentID]
FROM
	[Parent] [t1]

