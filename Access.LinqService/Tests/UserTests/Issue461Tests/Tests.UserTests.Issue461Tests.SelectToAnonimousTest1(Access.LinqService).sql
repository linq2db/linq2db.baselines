﻿BeforeExecute
-- Access AccessOleDb

SELECT
	(
		SELECT TOP 1
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

