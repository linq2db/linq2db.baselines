﻿BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET 2 ROWS
	) [t2]

