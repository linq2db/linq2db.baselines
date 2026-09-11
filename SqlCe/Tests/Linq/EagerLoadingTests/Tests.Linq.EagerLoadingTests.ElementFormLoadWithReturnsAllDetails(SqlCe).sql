-- SqlCe
SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 2
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlCe
SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 2

