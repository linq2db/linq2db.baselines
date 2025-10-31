-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d_1].[Key_1],
	[d_1].[ToValue]
FROM
	(
		SELECT DISTINCT
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
	) [m_1]
		INNER JOIN (
			SELECT
				[d].[ParentID] as [Key_1],
				GROUP_CONCAT(CAST([d].[ChildID] AS NVarChar(11)), ', ') as [ToValue]
			FROM
				[Child] [d]
			GROUP BY
				[d].[ParentID]
		) [d_1] ON [m_1].[ParentID] = [d_1].[Key_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_1].[ParentID]
FROM
	[Parent] [c_1]

