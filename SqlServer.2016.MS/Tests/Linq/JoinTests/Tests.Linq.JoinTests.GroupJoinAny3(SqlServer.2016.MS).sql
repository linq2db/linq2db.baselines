﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ParentID],
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	), 1, 0)
FROM
	[Parent] [p]

