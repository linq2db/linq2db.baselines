﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[g_1].[ParentID]
FROM
	(
		SELECT
			Count([t1].[ParentID]) as [ex],
			[t2].[ParentID]
		FROM
			[Child] [t2]
				LEFT JOIN (
					SELECT
						[ch].[ParentID]
					FROM
						[Child] [ch]
					WHERE
						[ch].[ChildID] > 20
					GROUP BY
						[ch].[ParentID]
				) [t1] ON ([t2].[ParentID] = [t1].[ParentID])
		GROUP BY
			[t2].[ParentID]
	) [g_1]
WHERE
	([g_1].[ex] > 2 OR [g_1].[ParentID] > 2)

