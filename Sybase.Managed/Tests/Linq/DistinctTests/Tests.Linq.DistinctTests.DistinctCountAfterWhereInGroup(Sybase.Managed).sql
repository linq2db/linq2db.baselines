-- Sybase.Managed Sybase
SELECT
	[m_1].[Key_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[grp].[ParentID] as [Key_1]
		FROM
			[GrandChild] [grp]
	) [m_1]
		INNER JOIN [GrandChild] [d] ON [m_1].[Key_1] = [d].[ParentID] OR [m_1].[Key_1] IS NULL AND [d].[ParentID] IS NULL
ORDER BY
	[m_1].[Key_1]

-- Sybase.Managed Sybase
SELECT
	[m_1].[Key_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[grp].[ParentID] as [Key_1]
		FROM
			[GrandChild] [grp]
	) [m_1]
		INNER JOIN [GrandChild] [d] ON [m_1].[Key_1] = [d].[ParentID] OR [m_1].[Key_1] IS NULL AND [d].[ParentID] IS NULL
ORDER BY
	[m_1].[Key_1]

-- Sybase.Managed Sybase
SELECT DISTINCT
	[grp].[ParentID]
FROM
	[GrandChild] [grp]
ORDER BY
	[grp].[ParentID]

-- Sybase.Managed Sybase
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

