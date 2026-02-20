-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[a_Children].[ChildID]
					FROM
						[Child] [a_Children]
					WHERE
						[p].[ParentID] = [a_Children].[ParentID]
				) [t1]
		) [t2]
WHERE
	[t2].[Count_1] > 0
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

