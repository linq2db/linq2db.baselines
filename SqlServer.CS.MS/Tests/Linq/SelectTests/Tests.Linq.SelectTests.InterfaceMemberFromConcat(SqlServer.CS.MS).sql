-- SqlServer.CS.MS SqlServer.2025
SELECT
	[m_2].[ParentID],
	[m_2].[Id]
FROM
	(
		SELECT
			[m_1].[ParentID] as [Id],
			[m_1].[ParentID]
		FROM
			[Parent] [m_1]
		WHERE
			[m_1].[ParentID] < 4
		UNION ALL
		SELECT
			[p].[ParentID] as [Id],
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] >= 4
	) [m_2]
WHERE
	[m_2].[Id] > 2

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

