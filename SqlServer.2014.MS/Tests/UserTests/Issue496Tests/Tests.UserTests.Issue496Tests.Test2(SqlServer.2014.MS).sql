-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[Item1],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID] as [Item1]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Item1] = [d].[ParentID]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

