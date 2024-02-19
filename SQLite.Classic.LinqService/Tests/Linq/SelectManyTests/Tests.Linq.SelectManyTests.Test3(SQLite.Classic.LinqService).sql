BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Parent] [t1],
	[Person] [t]
		INNER JOIN [GrandChild] [g_1] ON [t1].[ParentID] = [g_1].[ParentID]

