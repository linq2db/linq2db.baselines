﻿BeforeExecute
-- Access AccessOleDb

SELECT
	(
		SELECT
			Sum([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] > 1 AND [p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

