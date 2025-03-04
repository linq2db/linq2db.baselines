BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Key_1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t2].[Key_1]
		FROM
			(
				SELECT
					[t1].[ParentID] as [Key_1]
				FROM
					[Child] [t1]
				GROUP BY
					[t1].[ParentID]
			) [t2]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Key_1] = [d].[ParentID]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ParentID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

