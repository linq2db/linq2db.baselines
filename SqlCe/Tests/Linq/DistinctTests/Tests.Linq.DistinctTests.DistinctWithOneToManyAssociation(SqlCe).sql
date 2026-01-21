-- SqlCe

SELECT
	[t2].[ParentID],
	[t2].[ChildCount]
FROM
	(
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
	) [t2]
ORDER BY
	[t2].[ParentID]

-- SqlCe

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlCe

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

