﻿BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] > 3
	), 1, 0)

