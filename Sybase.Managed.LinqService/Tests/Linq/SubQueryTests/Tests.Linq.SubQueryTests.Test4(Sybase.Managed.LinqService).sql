BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> 5
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] = [m_1].[ParentID]
WHERE
	[d].[ChildID] = [d].[ParentID] * 10 + 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

