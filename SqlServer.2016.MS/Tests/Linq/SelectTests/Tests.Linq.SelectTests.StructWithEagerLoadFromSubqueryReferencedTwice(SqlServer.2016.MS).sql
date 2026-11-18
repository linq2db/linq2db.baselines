-- SqlServer.2016.MS SqlServer.2016
SELECT
	[m_1].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
ORDER BY
	[d].[ChildID]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[m_1].[ParentID]
FROM
	[Parent] [m_1]

