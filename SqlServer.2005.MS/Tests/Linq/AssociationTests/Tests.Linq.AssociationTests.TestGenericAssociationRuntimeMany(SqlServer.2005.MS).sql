BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t].[ParentID],
	[t].[Value1],
	[m_1].[ParentID],
	[m_1].[ChildID]
FROM
	[Parent] [t]
		INNER JOIN [Child] [m_1] ON [t].[ParentID] = [m_1].[ParentID]
WHERE
	[t].[ParentID] IN (1, 5) AND [m_1].[ChildID] > 1
ORDER BY
	[t].[ParentID]

