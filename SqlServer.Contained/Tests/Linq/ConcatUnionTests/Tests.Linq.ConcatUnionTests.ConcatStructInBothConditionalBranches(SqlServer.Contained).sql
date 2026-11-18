-- SqlServer.Contained SqlServer.2025
SELECT
	[m_2].[ParentID_1],
	[m_2].[Value_1],
	IIF([m_2].[ParentID] < 4, 1, 0)
FROM
	(
		SELECT
			[m_1].[ParentID],
			[m_1].[ParentID] as [ParentID_1],
			[m_1].[Value1] as [Value_1]
		FROM
			[Parent] [m_1]
		WHERE
			[m_1].[ParentID] < 4
		UNION ALL
		SELECT
			[p].[ParentID],
			[p].[ParentID] as [ParentID_1],
			[p].[Value1] as [Value_1]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] >= 4
	) [m_2]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

