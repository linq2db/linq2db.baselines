BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON CAST([m_1].[ParentID] AS BigInt) = [d].[ParentID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

