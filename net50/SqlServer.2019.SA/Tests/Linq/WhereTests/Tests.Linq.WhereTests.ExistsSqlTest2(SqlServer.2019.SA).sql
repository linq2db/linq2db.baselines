﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DELETE [p]
FROM
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
