﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	)

BeforeExecute
RollbackTransaction
