-- SqlServer.2019.MS SqlServer.2019
-- Batch 1
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

-- Batch 2
SELECT TOP (1)
	[t1].[ParentID]
FROM
	[Parent] [t1]
