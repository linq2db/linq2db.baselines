-- SqlServer.2025

SELECT
	[p].[ParentID],
	[c_2].[Index_1],
	[c_2].[ChildID]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				ROW_NUMBER() OVER (ORDER BY [c_1].[ChildID]) - 1 as [Index_1],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [c_2]
ORDER BY
	[c_2].[ChildID]

-- SqlServer.2025

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2025

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

