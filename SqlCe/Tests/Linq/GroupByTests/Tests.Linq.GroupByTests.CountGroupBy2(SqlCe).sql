﻿BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

