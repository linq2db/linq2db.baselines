﻿BeforeExecute
-- SqlCe

SELECT
	[t1].[COUNT_1] + [t1].[COUNT_1] as [c1]
FROM
	[Parent] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[t2].[ParentID] = [c_1].[ParentID]
		) [t1]

