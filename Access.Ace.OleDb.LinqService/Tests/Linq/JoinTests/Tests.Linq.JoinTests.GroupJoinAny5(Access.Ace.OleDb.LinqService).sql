﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	), True, False)
FROM
	[Parent] [t1]

