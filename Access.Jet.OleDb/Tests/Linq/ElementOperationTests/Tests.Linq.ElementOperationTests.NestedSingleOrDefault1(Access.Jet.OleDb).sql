﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	(
		SELECT DISTINCT
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

