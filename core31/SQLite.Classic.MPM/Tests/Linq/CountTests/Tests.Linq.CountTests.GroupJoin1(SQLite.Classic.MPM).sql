﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	),
	(
		SELECT
			Count(*)
		FROM
			[GrandChild] [t2]
		WHERE
			[p].[ParentID] = [t2].[ParentID]
	)
FROM
	[Parent] [p]

