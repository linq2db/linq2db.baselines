-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Item1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID] as [Item1]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Item1] = [d].[ParentID]
ORDER BY
	[m_1].[Item1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

