﻿BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ChildID] > ? AND [p].[ParentID] = [a_Children].[ParentID]
	) + 2
FROM
	[Parent] [p]

