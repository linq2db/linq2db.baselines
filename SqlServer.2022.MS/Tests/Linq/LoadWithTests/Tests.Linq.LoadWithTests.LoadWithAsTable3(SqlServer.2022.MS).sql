-- SqlServer.2022.MS SqlServer.2022
-- Batch 1
SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
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
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[p].[ParentID] = [a_GrandChildren].[ParentID]
	),
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
