﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Child] [c_1]
			WHERE
				[t1].[ParentID] = [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END
FROM
	[Parent] [t1]

