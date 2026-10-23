-- SQLite.Classic SQLite
DECLARE @Children  -- Int32
SET     @Children = 3

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]
LIMIT @Children

-- SQLite.Classic SQLite
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [t1]
	)

