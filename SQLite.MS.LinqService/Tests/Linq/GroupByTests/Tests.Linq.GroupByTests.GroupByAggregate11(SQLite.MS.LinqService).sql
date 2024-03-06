﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_2].[c1]
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						Avg([a_Children].[ParentID])
					FROM
						[Child] [a_Children]
					WHERE
						[g_1].[ParentID] = [a_Children].[ParentID]
				) > 3
					THEN 1
				ELSE 0
			END as [c1]
		FROM
			[Parent] [g_1]
		WHERE
			(
				SELECT
					Count(*)
				FROM
					[Child] [a_Children_1]
				WHERE
					[g_1].[ParentID] = [a_Children_1].[ParentID]
			) > 0
	) [g_2]
GROUP BY
	[g_2].[c1]

