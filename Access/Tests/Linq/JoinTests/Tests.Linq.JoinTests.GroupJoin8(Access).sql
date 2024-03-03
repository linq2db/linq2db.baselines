﻿BeforeExecute
-- Access AccessOleDb

SELECT
	(
		SELECT TOP 1
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
		ORDER BY
			[c_1].[ChildID]
	),
	(
		SELECT TOP 1
			[c_2].[ChildID]
		FROM
			[Child] [c_2]
		WHERE
			[t1].[ParentID] = [c_2].[ParentID]
		ORDER BY
			[c_2].[ChildID]
	)
FROM
	[Parent] [t1]

