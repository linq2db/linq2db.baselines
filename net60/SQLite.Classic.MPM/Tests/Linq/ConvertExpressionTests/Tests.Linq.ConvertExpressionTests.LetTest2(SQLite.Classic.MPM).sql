BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(
		SELECT
			1
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
		LIMIT 1
	) IS NOT NULL

