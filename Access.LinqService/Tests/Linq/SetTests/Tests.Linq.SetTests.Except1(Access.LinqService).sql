﻿BeforeExecute
-- Access AccessOleDb

SELECT DISTINCT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [p]
		WHERE
			[t1].[ParentID] = [p].[ParentID] AND [t1].[ChildID] = [p].[ChildID] AND
			[p].[ParentID] = 3
	)

