﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
		ORDER BY
			1
		OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 
	) [t2]

