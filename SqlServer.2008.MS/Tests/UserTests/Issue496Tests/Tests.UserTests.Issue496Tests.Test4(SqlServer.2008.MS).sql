-- SqlServer.2008.MS SqlServer.2008
-- Batch 1
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

-- Batch 2
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
