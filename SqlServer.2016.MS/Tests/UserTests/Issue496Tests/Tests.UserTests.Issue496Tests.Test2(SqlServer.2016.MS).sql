-- SqlServer.2016.MS SqlServer.2016
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
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- Batch 2
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
