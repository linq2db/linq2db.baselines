BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[Value1]
FROM
	(
		SELECT DISTINCT
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [m_1],
	[Parent] [d]
		LEFT JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
WHERE
	[d].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[ch].[ParentID]
FROM
	[Child] [ch]
ORDER BY
	[ch].[ChildID]

