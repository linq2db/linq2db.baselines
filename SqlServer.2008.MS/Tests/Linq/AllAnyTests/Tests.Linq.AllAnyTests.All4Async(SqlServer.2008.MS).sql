﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				1
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] <= 3
		)
			THEN 1
		ELSE 0
	END

