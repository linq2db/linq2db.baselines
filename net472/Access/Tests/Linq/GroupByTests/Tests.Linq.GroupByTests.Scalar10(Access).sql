﻿BeforeExecute
-- Access AccessOleDb

SELECT
	Count([t1].[ParentID])
FROM
	[Child] [t2]
		LEFT JOIN (
			SELECT
				[id].[ParentID]
			FROM
				[Child] [id]
			WHERE
				[id].[ChildID] < 30 AND [id].[ChildID] >= 20
			GROUP BY
				[id].[ParentID]
		) [t1] ON ([t2].[ParentID] = [t1].[ParentID])
GROUP BY
	[t2].[ParentID]

