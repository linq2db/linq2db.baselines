-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID],
	[c_2].[Value_1]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				COUNT(*) as [Value_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
			GROUP BY
				[c_1].[ParentID]
		) [c_2]
WHERE
	[c_2].[Value_1] > 0

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
		INNER JOIN [Child] [d] ON ([m_1].[ParentID] = [d].[ParentID])

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

