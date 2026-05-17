-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	COUNT(*),
	1 + MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]
LIMIT @take

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

