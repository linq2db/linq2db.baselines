﻿BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	Count(*)
FROM
	(
		SELECT TOP (@take)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	) [t2]

