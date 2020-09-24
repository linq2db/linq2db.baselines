﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[tt].[ParentID] as [tt]
			FROM
				(
					SELECT
						Sum([t1].[ChildID]) as [Sum_1],
						[t1].[ParentID]
					FROM
						[Child] [t1]
					GROUP BY
						[t1].[ParentID]
				) [tt]
			WHERE
				([tt].[Sum_1] IS NULL OR [tt].[Sum_1] <> 0)
		) [t2] ON [p].[ParentID] = [t2].[tt]

