﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [Parent].[ParentID]
	)

BeforeExecute
RollbackTransaction
