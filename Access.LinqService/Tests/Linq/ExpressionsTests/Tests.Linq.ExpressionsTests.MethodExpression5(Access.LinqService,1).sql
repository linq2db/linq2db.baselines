﻿BeforeExecute
-- Access AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) + CVar(@n)
FROM
	[Parent] [p]

