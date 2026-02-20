-- SqlCe

SELECT DISTINCT
	[p].[ParentID],
	[t1].[ChildCount]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [ChildCount]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
ORDER BY
	[p].[ParentID]

-- SqlCe

SELECT
	[m_1].[Item1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID] as [Item1]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Item1] = [d].[ParentID]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

