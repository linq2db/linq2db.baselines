BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	),
	[x].[ParentID] <> 0
FROM
	[Parent] [x]
UNION ALL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [t2]
	),
	NULL
FROM
	[Parent] [x_1]

