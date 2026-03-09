-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	[c_2].[Value_1]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				[c_1].[ChildID] as [Key_1],
				COUNT(*) as [Value_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
			GROUP BY
				[c_1].[ChildID]
		) [c_2]
ORDER BY
	[c_2].[Key_1],
	[c_2].[Value_1]

-- SqlServer.2012.MS SqlServer.2012

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

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

