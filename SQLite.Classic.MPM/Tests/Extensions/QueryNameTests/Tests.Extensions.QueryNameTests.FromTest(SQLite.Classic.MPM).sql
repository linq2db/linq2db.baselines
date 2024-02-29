BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	(
		SELECT /* PARENT */
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [p],
	(
		SELECT /* CHILD */
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
	) [t2]
WHERE
	[p].[ParentID] = [t2].[ParentID]

