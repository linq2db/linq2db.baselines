﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) + CVar(?)
FROM
	[Parent] [p]

