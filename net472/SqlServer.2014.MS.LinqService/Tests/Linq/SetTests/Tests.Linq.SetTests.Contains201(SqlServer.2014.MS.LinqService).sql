﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] - 1
	), 1, 0)
FROM
	[Parent] [p]

