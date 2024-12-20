﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT DISTINCT
	[t1].[ParentID]
FROM
	(
		SELECT TOP 4
			[ch].[ParentID]
		FROM
			[Child] [ch]
		ORDER BY
			[ch].[ParentID]
	) [t1]

