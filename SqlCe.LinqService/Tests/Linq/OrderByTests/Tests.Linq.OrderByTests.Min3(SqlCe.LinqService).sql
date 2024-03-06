﻿BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	Min([t2].[ParentID]) as [Min_1]
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[Value1]
	) [t2]

