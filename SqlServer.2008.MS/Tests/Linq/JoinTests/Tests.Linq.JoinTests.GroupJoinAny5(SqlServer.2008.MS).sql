﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		)
			THEN 1
		ELSE 0
	END
FROM
	[Parent] [p]

