-- SqlServer.2019
SELECT
	[m_1].[Key_1],
	[d_1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[grp].[ParentID] as [Key_1]
		FROM
			[GrandChild] [grp]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				[d].[ChildID]
			FROM
				[GrandChild] [d]
			WHERE
				([m_1].[Key_1] = [d].[ParentID] OR [m_1].[Key_1] IS NULL AND [d].[ParentID] IS NULL) AND
				[d].[ChildID] > 20
		) [d_1]
ORDER BY
	[m_1].[Key_1]

-- SqlServer.2019
SELECT
	[m_1].[Key_1],
	[d_1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[grp].[ParentID] as [Key_1]
		FROM
			[GrandChild] [grp]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				[d].[ChildID]
			FROM
				[GrandChild] [d]
			WHERE
				([m_1].[Key_1] = [d].[ParentID] OR [m_1].[Key_1] IS NULL AND [d].[ParentID] IS NULL) AND
				[d].[ChildID] > 20
		) [d_1]
ORDER BY
	[m_1].[Key_1]

-- SqlServer.2019
SELECT DISTINCT
	[grp].[ParentID]
FROM
	[GrandChild] [grp]
ORDER BY
	[grp].[ParentID]

-- SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

