﻿BeforeExecute
-- SqlCe

SELECT
	[p].[Value1]
FROM
	(
		SELECT
			[p1].[ParentID],
			NULL as [Value1]
		FROM
			[Parent] [p1]
		UNION
		SELECT
			[p2].[ParentID],
			[p2].[Value1]
		FROM
			[Parent] [p2]
	) [p]

