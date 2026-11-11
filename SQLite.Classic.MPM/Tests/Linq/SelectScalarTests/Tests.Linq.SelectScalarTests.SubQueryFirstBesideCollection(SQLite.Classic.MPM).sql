-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
LIMIT @take

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
		LIMIT 1
	)

