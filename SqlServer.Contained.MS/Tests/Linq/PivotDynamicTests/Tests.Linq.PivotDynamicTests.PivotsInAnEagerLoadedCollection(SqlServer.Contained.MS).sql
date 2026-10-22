-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[m_1].[ParentID],
	[d_1].[21],
	[d_1].[22],
	[d_1].[31],
	[d_1].[32],
	[d_1].[33]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 2 OR [p].[ParentID] = 3
	) [m_1]
		CROSS APPLY (
			SELECT
				SUM(IIF([d].[ChildID] = 21, [d].[ChildID], NULL)) as [21],
				SUM(IIF([d].[ChildID] = 22, [d].[ChildID], NULL)) as [22],
				SUM(IIF([d].[ChildID] = 31, [d].[ChildID], NULL)) as [31],
				SUM(IIF([d].[ChildID] = 32, [d].[ChildID], NULL)) as [32],
				SUM(IIF([d].[ChildID] = 33, [d].[ChildID], NULL)) as [33]
			FROM
				[Child] [d]
			WHERE
				[d].[ParentID] = [m_1].[ParentID]
			GROUP BY
				[d].[ParentID]
		) [d_1]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 2 OR [p].[ParentID] = 3

