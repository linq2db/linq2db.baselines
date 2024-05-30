BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[ParentID],
	[m_1].[Value1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[Parent_1].[ParentID],
			[Parent_1].[Value1]
		FROM
			[Parent] [Parent_1]
				LEFT JOIN [Child] [y4] ON [Parent_1].[ParentID] = [y4].[ParentID] AND [Parent_1].[Value1] = [y4].[ParentID]
		WHERE
			[Parent_1].[ParentID] = 1 AND [Parent_1].[Value1] IS NOT NULL
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID] AND [m_1].[Value1] = [d].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x5].[ParentID],
	[x5].[Value1]
FROM
	[Parent] [x5]
		LEFT JOIN [Child] [y4] ON [x5].[ParentID] = [y4].[ParentID] AND [x5].[Value1] = [y4].[ParentID]
WHERE
	[x5].[ParentID] = 1 AND [x5].[Value1] IS NOT NULL
ORDER BY
	[x5].[ParentID]

