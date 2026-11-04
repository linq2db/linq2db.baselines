-- SqlCe
SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID],
	[t2].[ParentID] as [ParentID_2],
	[t2].[Value1]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] = [m_1].[ParentID]
		OUTER APPLY (
			SELECT
				[p].[ParentID],
				[p].[Value1]
			FROM
				(
					SELECT TOP (1)
						[g_1].[ParentID]
					FROM
						[GrandChild] [g_1]
					WHERE
						[g_1].[ChildID] = [d].[ChildID]
				) [a_LinkedParent]
					INNER JOIN [Parent] [p] ON [a_LinkedParent].[ParentID] = [p].[ParentID]
		) [t2]
ORDER BY
	[d].[ChildID]

-- SqlCe
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

