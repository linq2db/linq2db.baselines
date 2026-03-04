-- SqlCe

SELECT
	[t2].[Sum_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				SUM(CASE
					WHEN [d].[ParentID] IS NOT NULL THEN [d].[ParentID]
					ELSE -100
				END) as [Sum_1]
			FROM
				(
					SELECT
						1 as [c1]
				) [t1]
					LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
		) [t2]

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

